library(tidyverse)
library(geepack)
library(mice);

## read in the lead data
lead = tibble(read.table(file="C:/Users/psioda/Documents/GitHub/bios-courses/BIOS-767/DATA/LEAD/tlc-data-missing.txt",na.strings=c(".")))
colnames(lead) <- c("id","trt","y0","y1","y4","y6")
lead$trt  <- ifelse(lead$trt=="A",1,0)



### explore the missing data pattern
md.pattern(lead)


## add in interaction variables
## these are needed for the imputation
lead.wide   <- lead %>% add_column(y0t=lead$y0*lead$trt) %>%
                        add_column(y1t=lead$y1*lead$trt)  %>%
                        add_column(y4t=lead$y4*lead$trt) %>%
                        add_column(y6t=lead$y6*lead$trt)

## obtain imputation method information containers to modify;
imp            <- mice(lead.wide,max=0,print=FALSE)
imp.method     <- mice(lead.wide,max=0,print=FALSE)$meth
imp.pred       <- mice(lead.wide,max=0,print=FALSE)$pred


## set imputation methods (logistic regression)
imp.method[c("y0")] <- "norm"
imp.method[c("y1")] <- "norm"
imp.method[c("y4")] <- "norm"
imp.method[c("y6")] <- "norm"

## passive imputation for interaction terms (i.e., these are computed and not imputed)
imp.method[c("y0t")] <- "~I(y0*trt)"
imp.method[c("y1t")] <- "~I(y1*trt)"
imp.method[c("y4t")] <- "~I(y4*trt)"
imp.method[c("y6t")] <- "~I(y6*trt)"

## modify predictor matrix for imputation models;
imp.pred["y0", "y0t"]          <- 0
imp.pred["y1", "y1t"]          <- 0
imp.pred["y4", "y4t"]          <- 0
imp.pred["y6", "y6t"]          <- 0


## perform the multiple imputation
## some warning messages are printed but these 
## do not appear problematic
num.IMP <- 500
lead.wide.imputed <- mice(lead.wide, pred = imp.pred, meth = imp.method,  m = num.IMP, max.int = num.IMP, print = FALSE)


## for longitudinal data, as best I can tell, one needs to 
## manually loop through the imputed data sets and analyze them.

## extract imputed data set
gee.fit=list()
for (data.id in 1:num.IMP)
{
  ## extract imputed data and transform to long format
  ind.imputed.long  <- tibble(complete(lead.wide.imputed, c(data.id)))
  ind.imputed.long  <- subset(ind.imputed.long,select=-c(y0t,y1t,y4t,y6t))
  ind.imputed.long  <- ind.imputed.long %>%  
    pivot_longer(
      cols = starts_with("y"),
      names_to = "week",
      names_prefix = "y",
      values_to = "y",
      values_drop_na = TRUE
    )
  
  ind.imputed.long$y  <- as.numeric(ind.imputed.long$y<20)
  ind.imputed.long$week <- as.numeric(ind.imputed.long$week)
  ind.imputed.long      <- ind.imputed.long %>% mutate(prev.y = lag(y)) %>% subset(week!=0)

  ### GEE Analysis - empirical standard errors
  gee.fit[[data.id]] <- geeglm(y~trt+week+trt:week+prev.y+trt:prev.y,
                               data=ind.imputed.long,
                               id=id,
                               family=binomial(logit),
                               corstr="independence",waves=week)
                                
  
}



## apply the formula in the BIOS 767 notes
## compute average value of parameter estimates (regression parameters, covariance matrix)
betaHat.ave = 0;
V           = 0;
for (data.id in 1:num.IMP)
{
  
  betaHat.ave = betaHat.ave + coef(gee.fit[[data.id]])
  V           = V  + vcov(gee.fit[[data.id]])
}
betaHat.ave = betaHat.ave /  num.IMP;
V           = V           /  num.IMP;

## compute the between imputation covariance; 
B = 0;
for (data.id in 1:num.IMP)
{
  b = coef(gee.fit[[data.id]])
  B = B + (b-betaHat.ave)%*%t(b-betaHat.ave)
}
B = B / (num.IMP-1);

## compute the estimated covariance matrix accounting for both sources of variability
Cov = V + (1+1/num.IMP)*B

## construct data frame of results
data.frame(estimate = betaHat.ave, std.err = sqrt(diag(Cov)), lower=betaHat.ave - 1.96*sqrt(diag(Cov)),upper=betaHat.ave + 1.96*sqrt(diag(Cov)))


## Note: Wald-type tests are straightforward using betaHat.ave and C  
L = matrix(c(c(0,1,0,0,0,0),c(0,0,0,0,1,0),c(0,0,0,0,0,1)),nrow=3,byrow=T)

Lbeta = L%*%betaHat.ave
Lbeta.cov = L%*%Cov%*%t(L)

chi.sq = t(Lbeta)%*%solve(Lbeta.cov)%*%Lbeta
p.val  = pchisq(chi.sq,3,lower.tail=FALSE)

data.frame(Lbeta = Lbeta, Lbeta.se = sqrt((diag(Lbeta.cov))), chi.sq, p.val)

## More accurate inferences can be made using the formula in the PROC MIANALYZE documentation
## they are straightforward to program