library(dplyr)
library(tidyverse)
library(jsonlite)

#Challenge Deliverable 1
## Linear Regression to Predict MPG

mpg_df<-read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#head(mpg_df)
#cor(mpg_df, method = "pearson")

(mpg_lm<-lm(mpg~vehicle_length+
             vehicle_weight+
             spoiler_angle+
             ground_clearance+
             AWD, mpg_df))

summary(mpg_lm)

#Challenge Deliverable 2
### Summary Statistics on Suspension Coils

coil_df<-read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

total_summary<-coil_df %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI), SD=sd(PSI))
            
summarize_coil <- coil_df %>% group_by(Manufacturing_Lot) %>% 
  summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI), SD=sd(PSI),.groups = 'keep') 


#Challenge Deliverable 3
## T-Tests on Suspension Coils

t.test(coil_df$PSI, mu=1500)

#Filter the data frame to retreive each lot data
lot1_PSI<-coil_df %>% filter(Manufacturing_Lot=="Lot1")
lot2_PSI<-coil_df %>% filter(Manufacturing_Lot=="Lot2")
lot3_PSI<-coil_df %>% filter(Manufacturing_Lot=="Lot3")

#T-test for each lot
t.test(lot1_PSI$PSI, mu=1500)
t.test(lot2_PSI$PSI, mu=1500)
t.test(lot3_PSI$PSI, mu=1500)

#summary(aov(PSI~Manufacturing_Lot, data=coil_df))

# t.test(coil_df$PSI, mu=1500, subset=coil_df$Manufacturing_Lot=="Lot1")
# t.test(coil_df$PSI, mu=1500, subset=coil_df$Manufacturing_Lot=="Lot2")
# t.test(coil_df$PSI, mu=1500, subset=coil_df$Manufacturing_Lot=="Lot3")







