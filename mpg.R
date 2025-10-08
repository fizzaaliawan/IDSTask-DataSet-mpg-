# Load required libraries
library(ggplot2)
library(dplyr)
library(ggcorrplot)

# Load dataset
data("mpg")

# View first few rows
head(mpg)

# Check dimensions
dim(mpg)

# Structure of dataset (data types)
str(mpg)

# 3️⃣ Data Cleaning
colSums(is.na(mpg))
sum(duplicated(mpg))
sapply(mpg, class)

# 4️⃣ Univariate Analysis
par(mfrow = c(2, 2))
hist(mpg$hwy, main = "Distribution of Highway MPG", col = "skyblue", xlab = "Highway MPG")
hist(mpg$cty, main = "Distribution of City MPG", col = "orange", xlab = "City MPG")
hist(mpg$displ, main = "Distribution of Engine Displacement", col = "lightgreen", xlab = "Engine Size")
boxplot(mpg$hwy, main = "Boxplot of Highway MPG", col = "pink")

# 5️⃣ Bivariate Analysis
par(mfrow = c(1, 1))
plot(mpg$displ, mpg$hwy,
     main = "Engine Size vs Highway Mileage",
     xlab = "Engine Displacement (L)",
     ylab = "Highway MPG",
     pch = 19, col = "blue")
abline(lm(hwy ~ displ, data = mpg), col = "red", lwd = 2)

# 6️⃣ Multivariate Analysis
pairs(~displ + cty + hwy + cyl, data = mpg, main = "Pairwise Relationships")

# 7️⃣ Identify Key Variables for Modeling
cat("\n--- Key Variables for Modeling ---\n")
cat("• Target Variable: hwy (Highway Mileage)\n")
cat("• Strong Predictors: displ (Engine Size), cyl (Cylinders), cty (City Mileage)\n")
cat("• Supporting Categorical Features: manufacturer, model, drv, class, trans, fl\n")
cat("These variables can be used in regression or classification models depending on the goal.\n")
