require(tidyverse);
require(lme4);
require(GLMMadaptive);

setwd("C:/Users/psioda/Documents/GitHub/bios-courses/BIOS-767/DATA/SCHIZ")

schiz           <- read.table("schiz.txt",header=F)
colnames(schiz) <- c("id", "y", "trt", "week");
schiz$sqrtWeek  <- sqrt(schiz$week)
schiz$modWorse  <- (schiz$y>=3)


## code to fit random intercept model;
r.int <- glmer(modWorse~trt+sqrtWeek+trt:sqrtWeek+(1|id),data=schiz,family=binomial,nAGQ=5)
summary(r.int)


## code to fit random slopes model;
r.slope2 <- mixed_model(
  fixed  = modWorse~trt+sqrtWeek+trt:sqrtWeek,
  random = ~ 1+sqrtWeek|id,
  data   = schiz,
  family = binomial,
  control=(nAGQ=5)
)
summary(r.slope2)




## Code to Subject-Specific Plots
attach(schiz)

t2      = seq(0,6,by=.1)
timevec = sqrt(t2)
probnull= rep(0,length(t2))

p=10
plot(t2,probnull,type='n',ylim=c(0,1),xlab='Weeks',ylab='Probability',main='Subject-specific Trajectories')

idsubsetplac=sample(id[trt==0],p,replace=FALSE)
idsubsettrt=sample(id[trt==1],p,replace=FALSE)


xbplac=matrix(0,ncol=length(t2),nrow=10)
xbtrt =xbplac

probplac=matrix(0,ncol=length(t2),nrow=10)
probtrt =probplac

beta0=coef(r.slope2)[,1]
beta1=coef(r.slope2)[,3]
idnames=unique(id)

for (i in 1:p) 
{
  xbplac[i,]   = beta0[idnames==idsubsetplac[i]]+beta1[idnames==idsubsetplac[i]]*timevec
  probplac[i,] = exp(xbplac[i,])/(1+exp(xbplac[i,]))
  lines(t2,probplac[i,],col=1)
  
  xbtrt[i,]=beta0[idnames==idsubsettrt[i]]+fixef(r.slope2)[2]+
            (beta1[idnames==idsubsettrt[i]]+fixef(r.slope2)[4])*timevec
  probtrt[i,]=exp(xbtrt[i,])/(1+exp(xbtrt[i,]))
  lines(t2,probtrt[i,],col=3)
}
legend(0,0.1,c('Placebo','Trt'),col=c(1,3),lty=c(1,1))

