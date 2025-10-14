#Author: Yash S., Date: 8/8/2023, Purpose: R practice

#calculate sum of 2 numbers: 10, 15
10+15
#calculate division of 2 numbers: 1000, 10
1000/10
#calculate subtraction of 2 numbers: 700000000, 7
7000000000-7
#calculate multiplication of 2 numbers: 191919, 8
191919*8

#Read the Affymetrix data in R
library(affy)

#Set the working directory
setwd("/Users/yashsingh/Documents/Research Course/Data/TRIAL_GSE344_RAW")GSE30219_SCLC_survival
> setwd("/Users/yashsingh/Documents/Research/Data_s/SCLC")


#Read the data
data <- ReadAffy()

#Visualize read dataset
boxplot(data)
#save as pdf

#Pre-processing dataset: Normalization of data using RMA
data_normalized <- rma(data)
#head(variable) gives first few information about data

#Creating a table with sample and expression values
expression_values <- exprs(data_normalized)
#head(expression_values) to get table
#tail(expression_values) to get last few lines
#dim(expression_values) for dimension. First number is # of rows and second number is # of columns, which is # of samples in this case
#The numbers in the table is the intensity of the fluoresence. The higher the number, the more the expression of the gene. High number would be 1500+.

#Create a box plot of normalized expression data
boxplot(expression_values)

#Analysis for gene expression changes

#Setting which datasets are treatment vs. control
Treatment <- apply(expression_values[,c("GSM4843.CEL", "GSM4844.CEL")], 1, log)

Control <- apply(expression_values[,c("GSM4845.CEL", "GSM4846.CEL")], 1, log)

Control <- apply(expression_values[,c(1:50)], 1, log)

#Get back the previous data shape using transpose (because rows and columns flipped in the last step)
Treatment <- t(Treatment)
Control <- t(Control)

#Average for treatment and control
Treatment_Mean <- rowMeans(Treatment)
Control_Mean <- rowMeans(Control)

#Comparing treatment and control samples to check the up-regulated and down-regulated genes, Fold change analysis
Treatment_Mean - Control_Mean #output tells changes in treatment sample
Treatment_Mean / Control_Mean #make sure treatment is before control
v
head(Fold_change)

#Up-regulated fold change > +1.5
#Down-regulated fold change < -1.5

> write.csv(Fold_change, "/Users/yashsingh/Desktop\\Fold_change.csv", row.names=TRUE)

