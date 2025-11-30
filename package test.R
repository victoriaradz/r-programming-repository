#Load libraries
library(Analysisloans)

#Load data
loans <- read.csv("C:/Users/vradz/OneDrive/Desktop/LIS4370 - Final Project/Loan_approval_data_2025.csv")

#Test out functions
model <- approval_model(loans)

model

sratio(loans$savings_assets, loans$annual_income)[1:10]

factorCorrelation(loans, target = "defaults_on_file")

riskDistribution(model, loans)
