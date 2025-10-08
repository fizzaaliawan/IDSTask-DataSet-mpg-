#  Dataset Analysis (mpg) — R Script Documentation

This project performs a **comprehensive exploratory data analysis (EDA)** on the `mpg` dataset available in R. The analysis aims to discover trends, patterns, and relationships between vehicle features and fuel efficiency metrics.


## 🔧 Project Details

**Language:** R
**Dataset:** `mpg` (from `ggplot2` package)
**Focus:** Understanding how engine size, cylinders, and other variables influence fuel consumption.


## 📚 Dataset Overview

The `mpg` dataset contains observations on various car models and includes:

* `manufacturer`, `model`
* `displ` (engine displacement in liters)
* `cyl` (number of cylinders)
* `cty`, `hwy` (city and highway miles per gallon)
* `drv`, `fl`, `class`, `trans`

## 🧩 Analysis Breakdown

### Step 1: Data Inspection

* Displays the first few rows using `head(mpg)`
* Shows dataset dimensions (`dim`) and structure (`str`)

### Step 2: Data Cleaning

* Checks for missing or duplicated values
* Identifies data types for each column

### Step 3: Univariate Analysis

Visualizes single-variable distributions to understand data spread:

* Histograms for highway MPG, city MPG, and engine size
* Boxplot for detecting outliers in `hwy`

### Step 4: Bivariate Analysis

* Examines correlation between engine size and highway mileage
* Adds a regression line to show the inverse relationship

### Step 5: Multivariate Analysis

* Uses `pairs()` to visualize relationships among numeric variables
* Helps identify variable interactions

### Step 6: Feature Identification

Defines key variables for predictive modeling:

* **Target:** `hwy` (Highway Mileage)
* **Predictors:** `displ`, `cty`, `cyl`
* **Categorical variables:** `manufacturer`, `class`, `trans`, etc.


## 🎯 Key Insights

* Larger engine displacement generally leads to **lower fuel efficiency**.
* City and highway mileage are **strongly correlated**.
* Certain vehicle classes (e.g., compact, subcompact) perform better on mileage.







