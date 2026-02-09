# London Ward Wellbeing & Crime Rate Analysis using Beta Regression

## Project Overview

This project applies Beta regression to analyze ward-level data from London using publicly available wellbeing and socio-economic indicators. The primary focus is to model and understand the relationship between crime rate and other key indicators, while demonstrating the appropriate use of statistical methods for bounded response variables.

The analysis is conducted using the R programming language in RStudio, with an emphasis on real-world data cleaning, model implementation, and interpretation of results.

---

## Research Objective

The main objectives of this project are:

* To identify factors associated with ward-level crime rates in London
* To demonstrate why Beta regression is suitable for modeling proportion-type data
* To implement and interpret a Beta regression model using R
* To practice clear statistical reporting and result interpretation

In this study, crime rate is treated as the response variable, while selected socio-economic and wellbeing indicators are used as predictors.

---

## Data Description

The dataset is obtained from the London Data Store(https://data.london.gov.uk/dataset/london-ward-well-being-scores-2k843/), which provides ward-level wellbeing and indicator data for London boroughs. The data include:

* Ward-level observations across multiple London boroughs
* covers 35 London boroughs, 1-25 wards each borough
* A range of socio-economic, health, and wellbeing indicators
* Publicly available and consistently measured variables

Prior to analysis, the dataset was cleaned to ensure correct data types and suitability for statistical modeling.

---

## Methodology

### Data Preparation

The following preprocessing steps were performed:

* Imported Excel data into R using appropriate libraries
* removed missing values(NAs)
* Checked variable data types and converted non-numeric variables where necessary
* Selected relevant variables for analysis
* Rescaled the response variable (crime rate) to lie within the interval (0, 1)
* fitted the beta regression model

### Why Beta Regression?

Beta regression is used because the response variable is continuous and bounded between 0 and 1. Unlike linear regression, Beta regression:

* Ensures predicted values remain within valid bounds
* Accounts for heteroskedasticity commonly observed in proportion data
* Is theoretically appropriate for modeling rates and proportions

The model was fitted using the `betareg` package in R with a logit link function.

---

## Model Implementation

A Beta regression model was estimated with crime rate as the response variable and selected socio-economic indicators as predictors. Model diagnostics confirmed that fitted values lie within the unit interval and that the model provides an adequate fit to the data.

---

## Key Findings

* The crime rates in London wards are more strongly associated with broader socio-economic conditions, health outcomes, and urban structure than with education or isolated health indicators.
* The direction of the estimated effects aligns with theoretical expectations
* Beta regression proved effective for modeling bounded crime rate data

These findings are exploratory in nature and intended to demonstrate methodology rather than causal inference.

---

## Skills Demonstrated

This project demonstrates the following skills:

* Statistical modeling with Beta regression
* Applied data analysis using R and RStudio
* Data cleaning and preprocessing of real-world datasets
* Working with publicly available open data
* Model interpretation and result communication

---

## Tools & Technologies

* R
* RStudio
* betareg
* readxl

---

## Conclusion

In conclusion, higher unemployment and greater public transport accessibility are associated with increased crime rates, while higher life expectancy, better self-reported well-being, and improved access to green spaces are associated with lower crime. These results highlight the multidimensional nature of crime and suggest that effective crime reduction strategies may require coordinated policies addressing employment, public health, urban planning, and community well-being.
While the analysis is exploratory and does not establish causality, it demonstrates how statistical modeling can be used to uncover meaningful relationships in real-world data. The project also illustrates the practical use of Beta regression for analyzing bounded response variables and translating statistical results into policy-relevant insights.

---

## License

This project is licensed under the **MIT License**.
