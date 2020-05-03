library(tidyverse)
#path_to_my_data <- file.path("Macintosh HD","Users","samben","Desktop","Data Analysis","R_Analysis")
mecha_table <- read.csv("MechaCar_mpg.csv", stringsAsFactors = F, check.names=F) #import table

#MPG Regression
mecha_lm <- lm(mpg ~ vehicle_length + vehicle_weight+ spoiler_angle + ground_clearance + AWD, data = mecha_table) #create multiple linear regression statement
summary(mecha_lm)

#Suspension Coil Summary

suspension_table <-read.csv(file='Suspension_Coil.csv',stringsAsFactors = F, check.names=F, sep=',', header = T)
lot_summary<- suspension_table %>% group_by(Manufacturing_Lot)%>%summarise(PSI_mean=mean(PSI), PSI_sd = sd(PSI), PSI_median = median(PSI), PSI_variance = var(PSI))

sample_table <- suspension_table %>% sample_n(50) #generate 50 randomly sampled
sample_table2 <- suspension_table %>% sample_n(50) #generate another 50 randomly sampled data

t.test(sample_table$PSI, sample_table2$PSI) #compare means

#Suspension Coil T-Test

t.test(sample_table$PSI, mu = 1500) #get mean for sample table
t.test(sample_table2$PSI, mu = 1500) #get mean for sample table 2

t.test(subset(suspension_table, Manufacturing_Lot=="Lot1")$PSI, mu = 1500)
t.test(subset(suspension_table, Manufacturing_Lot=="Lot2")$PSI, mu = 1500)
t.test(subset(suspension_table, Manufacturing_Lot=="Lot3")$PSI, mu = 1500)

#Horse Power vs MPG

lm(mpg ~ hp + cyl + disp + drat+ wt + qsec + vs + am + gear + carb, data=mtcars) #generate multiple linear regression model
lm(mpg ~ hp,data=mtcars) #generate single linear regression model

summary_table_mtcars<-summary(lm(mpg ~ hp + cyl + disp + drat+ wt + qsec + vs + am + gear + carb, data=mtcars)) #generate multiple linear regression model
summary_table_mtcars
summary(lm(mpg ~ hp,data=mtcars)) #generate single linear regression model

summary(lm(mpg ~ hp + cyl + disp + drat+ wt + qsec + vs + am + gear + carb, data=mtcars)) #generate multiple linear regression model
mtcars %>%
  summarise(hp_mean= mean(hp), hp_sd = sd(hp), hp_median = median(hp), hp_variance = var(hp))
sample_table_mtcars <- mtcars %>% sample_n(25) #generate 25 randomly sampled data points
for(i in 1050:1800){
  print(t.test(sample_table_mtcars$hp, mu = i))
}

