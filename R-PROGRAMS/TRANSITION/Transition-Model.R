library(tidyverse)
library(geepack)

## read in the lead data
lead = tibble(read.table(file="C:/Users/psioda/Documents/GitHub/bios-courses/BIOS-767/DATA/LEAD/tlc-data.txt"))
colnames(lead) <- c("id","trt","y0","y1","y4","y6")

lead$y0 <- as.numeric(lead$y0<20)
lead$y1 <- as.numeric(lead$y1<20)
lead$y4 <- as.numeric(lead$y4<20)
lead$y6 <- as.numeric(lead$y6<20)

## transpose data to long format and lag the
## previous value of y;
lead.long  <- lead %>%  
  pivot_longer(
    cols = starts_with("y"),
    names_to = "week",
    names_prefix = "y",
    values_to = "y",
    values_drop_na = TRUE
  )
lead.long$week <- as.numeric(lead.long$week)
lead.long      <- lead.long %>% mutate(prev.y = lag(y)) %>% subset(week!=0)
lead.long$trt  <- ifelse(lead.long$trt=="A",1,0)

## now, the analysis can be done with a simple GLM
## compare to model-based inference on slide 32;
tran.fit <- glm(y~trt+week+trt:week+prev.y+trt:prev.y,
                data=lead.long,
                family=quasibinomial(link = "logit"))
summary(tran.fit)

## now, the analysis can be done with a simple GLM
## compare to sandwich estimator inference on slide 32;
tran.fit2 <- geeglm(y~trt+week+trt:week+prev.y+trt:prev.y,
                data=lead.long,
                id=id,
                family=binomial(logit),
                corstr="independence",waves=week)
summary(tran.fit2)