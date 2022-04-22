require(tidyverse);
require(geepack);
require(mice);

setwd("C:/Users/psioda/Documents/GitHub/bios-courses/BIOS-767/DATA/CONTRA");

## read in the amenorrhea data set
contra           <- tibble(read.table("amenorrhea-data.txt",header=F,na.strings=c(".")))
colnames(contra) <- c("id","dose","time","y");


### missing data pattern
md.pattern(contra)


### impute missing data


  ### need to transpose data to wide format first
  contra.wide <- contra %>%  pivot_wider(names_from = time, values_from = y, names_prefix = "y")
  head(contra.wide)

  ## add in interaction variables
  ## these are needed for the imputation
  contra.wide <- contra.wide %>% add_column(int.y1dose=contra.wide$y1*contra.wide$dose)
  contra.wide <- contra.wide %>% add_column(int.y2dose=contra.wide$y2*contra.wide$dose)
  contra.wide <- contra.wide %>% add_column(int.y3dose=contra.wide$y3*contra.wide$dose)
  contra.wide <- contra.wide %>% add_column(int.y4dose=contra.wide$y4*contra.wide$dose)
  head(contra.wide)

  ## obtain imputation method information containers to modify;
  imp.method     <- mice(contra.wide,max=0,print=FALSE)$meth
  imp.pred       <- mice(contra.wide,max=0,print=FALSE)$pred

  ## set imputation methods (logistic regression)
  imp.method[c("y1")] <- "logreg"
  imp.method[c("y2")] <- "logreg"
  imp.method[c("y3")] <- "logreg"
  imp.method[c("y4")] <- "logreg"

  ## passive imputation for interaction terms (i.e., these are computed and not imputed)
  imp.method[c("int.y1dose")] <- "~I(y1*dose)"
  imp.method[c("int.y2dose")] <- "~I(y2*dose)"
  imp.method[c("int.y3dose")] <- "~I(y3*dose)"
  imp.method[c("int.y4dose")] <- "~I(y4*dose)"

  ## modify predictor matrix for imputation models;
  imp.pred["y1", "int.y1dose"]          <- 0
  imp.pred["y2", "int.y2dose"]          <- 0
  imp.pred["y3", "int.y3dose"]          <- 0
  imp.pred["y4", "int.y4dose"]          <- 0
  
  ## observe the predictors included in the imputation model
  ## these are all possible variables in first order interactions
  ## this can be modified as needed
  ## the predictors for id, dose, and passively imputed values are irrelevant
  imp.pred

  
  ## perform the multiple imputation
  ## some warning messages are printed but these 
  ## do not appear problematic
  num.IMP <- 100
  contra.wide.imputed <- mice(contra.wide, pred = imp.pred, meth = imp.method,  m = num.IMP, max.int = num.IMP, print = FALSE)

  
  ## for longitudinal data, as best I can tell, one needs to 
  ## manually loop through the imputed data sets and analyze them.
  
  ## extract imputed data set
  gee.fit=list()
  for (data.id in 1:num.IMP)
  {
    ## extract imputed data and transform to long format
    ind.imputed.long  <- tibble(complete(contra.wide.imputed, c(data.id)))
    ind.imputed.long  <- subset(ind.imputed.long,select=-c(int.y1dose,int.y2dose,int.y3dose,int.y4dose))
    ind.imputed.long  <- ind.imputed.long %>%  
      pivot_longer(
        cols = starts_with("y"),
        names_to = "time",
        names_prefix = "y",
        values_to = "y",
        values_drop_na = TRUE
      )
    
    ## create (by choice) time variable as (0,1,2,3)
    ind.imputed.long$time <- as.numeric(ind.imputed.long$time)-1
    
    ### GEE Analysis - empirical standard errors
    gee.fit[[data.id]] <- geeglm( y~dose + time +dose*time + I(time^2) +I(time^2)*dose, 
                                  data=ind.imputed.long, id=id, family=binomial(logit),
                                  corstr="exchangeable",waves=time
                                 ) 
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

## More accurate inferences can be made using the formula in the PROC MIANALYZE documentation
## they are straightforward to program

