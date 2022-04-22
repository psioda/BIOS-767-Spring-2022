require(tidyverse);
require(geepack);
require(MASS);

setwd("C:/Users/psioda/Documents/GitHub/bios-courses/BIOS-767/DATA/SCHIZ");

### GEE analysis - PO model;
### note that for this data set, the GEE algorithm
### does not converge unless y is mapped according to h(1,2) = 2;

schiz           <- read.table("schiz.txt",header=F)
colnames(schiz) <- c("id","y","trt","week");
schiz           <- tibble(schiz) %>% filter(week %in% c(0,1,3,6))
schiz$y234      <- ordered(factor(ifelse(schiz$y<=2,2,schiz$y),levels=c(2,3,4)))
schiz$times     <- as.numeric(factor(schiz$week,levels=unique(factor(schiz$week))))


## generalized linear model (matches SAS PROC GENMOD);
glm.fit = polr( y234 ~ factor(trt)*factor(week), data = schiz)
summary(glm.fit)

## not even close to SAS PROC GENMOD;
gee.fit = ordgee( y234 ~ factor(trt)*factor(week), id = id, data = schiz, corstr = "independence", int.const=TRUE, waves = schiz$times)
summary(gee.fit)

gee.fit$beta
gee.fit$vbeta


