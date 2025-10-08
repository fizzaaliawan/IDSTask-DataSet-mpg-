#  Exploratory Data Analysis (EDA) — mpg Dataset

This project performs a comprehensive exploratory data analysis (EDA) on the built-in `mpg` dataset from the `ggplot2` package in R.
The main objective is to explore how various vehicle attributes — such as engine size, number of cylinders, and drive type — influence fuel efficiency.

---

##  Project Details

**Language:** R  
**Dataset:** `mpg` (from `ggplot2` package)  
**Goal:** To understand how engine characteristics and vehicle type affect mileage (MPG).  


---

##  Dataset Overview

The `mpg` dataset provides detailed information about fuel economy for different car models.
It includes both numeric and categorical variables related to performance and classification.

**Main Variables:**

* `manufacturer`, `model` – vehicle brand and name
* `displ` – engine displacement (liters)
* `cyl` – number of engine cylinders
* `cty`, `hwy` – city and highway miles per gallon
* `drv` – drive type (front, rear, 4-wheel)
* `fl` – fuel type
* `class` – type of car (compact, SUV, etc.)
* `trans` – transmission type

---

##  Analysis Breakdown

### **Step 1: Data Inspection**

* Displays the first few records using `head(mpg)`
* Checks dataset size with `dim()`
* Examines structure and variable types using `str()`

### **Step 2: Data Cleaning**

* Checks for missing values using `colSums(is.na())`
* Detects duplicates using `duplicated()`
* Confirms data types using `sapply()`

---

### **Step 3: Univariate Analysis**

These graphs show one variable at a time to understand its distribution.

* **Histogram of `hwy` (Highway Mileage):**

  * **X-axis:** Highway MPG
  * **Y-axis:** Frequency (number of cars)
  * Shows how highway mileage is distributed among vehicles.

* **Histogram of `cty` (City Mileage):**

  * **X-axis:** City MPG
  * **Y-axis:** Frequency
  * Displays how cars perform in city driving conditions.

* **Histogram of `displ` (Engine Displacement):**

  * **X-axis:** Engine size in liters
  * **Y-axis:** Frequency
  * Helps identify common engine sizes and their spread across cars.

* **Boxplot of `hwy`:**

  * Visualizes spread, median, and outliers in highway mileage data.

---

### **Step 4: Bivariate Analysis**

These plots compare two variables to reveal their relationship.

* **Scatter Plot (Engine Size vs Highway Mileage):**

  * **X-axis:** Engine Displacement (`displ`)
  * **Y-axis:** Highway MPG (`hwy`)
  * Each point represents a car model.
  * Shows a **negative correlation** — as engine size increases, highway mileage decreases.
  * A **red regression line** is drawn to emphasize this downward trend.

---

### **Step 5: Multivariate Analysis**

This step explores multiple numeric variables together using pairwise relationships.

* **Pairs Plot:**

  * Variables used: `displ`, `cty`, `hwy`, `cyl`
  * Each mini scatter plot compares two variables side by side.
  * Key observations:

    * `cty` and `hwy` are strongly positively correlated.
    * `displ` and `hwy` show negative correlation.
    * `cyl` is also inversely related to mileage.

---

### **Step 6: Feature Identification**

Highlights variables that could be used for predictive modeling:

* **Target Variable:** `hwy` (Highway Mileage)
* **Main Predictors:** `displ`, `cty`, `cyl`
* **Supporting Features:** `manufacturer`, `class`, `trans`, `drv`, `fl`

---

##  Key Insights

* Vehicles with **larger engines** generally have **lower fuel efficiency**.
* **City** and  **highway mileage** values **increase** together, indicating **strong correlation**.
* **Compact** and **subcompact cars** provide the **highest mileage**.
* Dataset is clean, well-structured, and ready for regression or classification modeling.

---
