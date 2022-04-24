require(tidyverse);
require(geepack);
require(wgeesel);

setwd("C:/Users/psioda/Documents/GitHub/bios-courses/BIOS-767/DATA/CONTRA");

## read in the amenorrhea data set
contra           <- tibble(read.table("amenorrhea-data.txt",header=F,na.strings=c(".")))
colnames(contra) <- c("id","dose","time","y");
contra$r         <- 1-as.integer(is.na(contra$y))
contra$time      <- contra$time-1


## lag the previous value of y and set to zero for first observation for an ID
contra$prev.y    <- lag(contra$y,n=1)
contra$prev.y[contra$time==0] <- 0


#proc gee data=contra2 plots=histogram;
#  class ID ctime(ref='3');
#  missmodel ctime prevY Dose Dose*prevY / type=obslevel;
#  model y(event='1') = time time*time dose dose*time dose*time*time / dist=bin;
#  repeated subject=ID / within=cTime corr=cs;
#run;

wgee.fit <-
  wgee(y ~ time + I(time^2) + dose + dose*time + dose*I(time^2),
     data     = contra,
     id       = contra$id, 
     family   = "binomial", 
     corstr   = "exchangeable",
     scale    = NULL,
     mismodel = r ~ I(time==2) + I(time==3)  + prev.y + dose + dose*prev.y)

summary(wgee.fit)
wgee.fit$mis_fit


## Perform wald test for any dose effect
L <- rbind(c(0, 0, 0, 1, 0, 0),
           c(0, 0, 0, 0, 1, 0),
           c(0, 0, 0, 0, 0, 1))
beta    <- c(wgee.fit$beta)
cov     <- wgee.fit$var
chi.sq  <- t(L%*%beta)%*%solve(L%*%cov%*%t(L))%*%L%*%beta
p.value <- 1-pchisq(chi.sq,3)

## print out p-value and test statistic
print(c(chi.sq,p.value))
