# load required library for multinomial logistic regression
library(nnet)  

# load cleaned data
load(here::here("data", "clean.Rdata"))

# build multinomial logistic regression model
# outcome: diabetes status
# predictors: education level and poverty ratio
model <- multinom(diabetes_status ~ education + INDFMPIR, 
                  data = df)

# Display model summary
summary(model)