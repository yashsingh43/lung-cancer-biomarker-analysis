# Survival analysis for selected gene signatures

# Read the data

data <- read.csv("SCLC Survival Data.csv", header=TRUE)

# Sub-select data for analysis

dataselect <- data[,c(2,6,8)]

datasubselect <- dataselect[1:21,]

Final <- datasubselect[datasubselect[,2] != '#VALUE!', ]

# Load necessary libraries
library(survival)
library(ranger)
library(ggplot2)
library(dplyr)
library(ggfortify)

# Use function survfit for generating KM plots
# Kaplan Meir Plots/Survival Plots

Survival_Plot <- survfit(Surv(Disease.Free.Survival..days., Status..0.1.) ~ low.high, data=datasubselect)

autoplot(Survival_Plot)

# cox proportion hazards model to understand if the differences between high and low expression groups are significant

cox <- coxph(Surv(Disease.Free.Survival..days., Status..0.1.) ~ low.high, data=datasubselect)

summary(cox)










