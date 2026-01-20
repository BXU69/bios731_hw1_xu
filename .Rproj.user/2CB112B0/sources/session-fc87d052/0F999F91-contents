# Examining Socioeconomic Factors Associated with Diabetes Using NHANES Data

## Introduction

Understanding the relationship between these socioeconomic factors and diabetes prevalence is essential for developing targeted prevention strategies. We use data from the National Health and Nutrition Examination Survey (NHANES) to explore the relationship between diabetes status and socioeconomic factors using multinomial logistic regression.

## Data

NHANES is a nationally representative cross-sectional survey conducted by the Centers for Disease Control and Prevention (CDC). It combines interviews, physical examinations, and laboratory measurements. For detailed information, you can refer to the website: https://wwwn.cdc.gov/nchs/nhanes/

For this analysis, we used the following NHANES components:

Education level and income-to-poverty ratio from Demographics data (`data/DEMO_L.xpt`).

Diabetes status from Diabetes Questionnaire data (`data/DIQ_L.xtp`).

## Repository Structure

├── data/                         # Raw data and saved cleaned dataset
│   ├── DEMO_L.xpt                # Demographics data from NHANES (education, income-to-poverty ratio)
│   ├── DIQ_L.xpt                 # Diabetes Questionnaire data from NHANES
│   └── clean.RData               # Cleaned and merged dataset ready for analysis
├── source/                       # Modular scripts for cleaning, analysis, and visualization
│   ├── data_cleaning.R           # Data cleaning and preprocessing script
│   ├── data_analysis.R           # Multinomial logistic regression model fitting
│   ├── data_visualization.R      # Code for generating figures
│   └── session_info.R            # Script to generate session information
├── analysis                  # Contain all the source R Markdown files that implement the analyses for the project
│   ├── final_report.Rmd          # Main R Markdown file for the complete analysis report    
├── README.md                     # Project overview and reproduction instructions
├── results/                      # Contain results exported by the analysis files
    ├── figure-1.png              # Visualization of analysis results
    └── sessionInfo.txt           # R session information including package versions

## Reproduce Instruction

To reproduce this analysis, follow these steps:

1). Clone this repository to your local machine and open the RStudio project file (`.Rproj`).

2). Install all required R packages listed in the `results/sessionInfo.txt` file.

3). Open `analysis/final_report.Rmd` and knit the file to HTML format.

## Session Information

The full output of `sessionInfo()` (including R version and package versions) used in this analysis is saved in `results/sessionInfo.txt`.

## Collaboration Note

The NHANES dataset selection and initial data identification were conducted collaboratively with another student Rita Zhirui Fu. However, the research question, analysis, and interpretation presented in this repository are entirely independent and unique to this project.
