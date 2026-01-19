library(haven)
library(here)
library(dplyr)

#### Data Reading ####
demo <- read_xpt(here("data", "DEMO_L.xpt"))
diabetes <- read_xpt(here("data", "DIQ_L.xpt"))

#1. `demo`: education level (DMDEDUC2), ratio of family income to poverty (INDFMPIR).
#2. `diabetes`: Doctor told you have diabetes (DIQ010)

#### Data Cleaning and Processing ####
#### Research Questions: 
#### 1. relationship between diabetes v.s. education level
#### 2. relationship between diabetes v.s. ratio of family income to poverty
# Merge BMI, education level and poverty ratio by respondance sequence number
df <- merge(demo[,c("SEQN", "DMDEDUC2", "INDFMPIR")], 
            diabetes[,c("SEQN", "DIQ010")])
# remove missing values
df <- na.omit(df)
# remove "unknown" for education level
df <- df %>% 
  filter(DMDEDUC2 != 9) 
# label education level and diabetes status
df$education <- factor(df$DMDEDUC2,
                        levels = c(1, 2, 3, 4, 5),
                        labels = c("<9th Grade", "9-11th Grade", 
                                   "HS Graduate", "Some College", "College+"))
df$diabetes_status <- factor(df$DIQ010,
                              levels = c(1, 2, 3),
                              labels = c("Diabetes", "No Diabetes", "Borderline"))
# store cleaned data
save(df, file = here("data", "clean.RData"))

