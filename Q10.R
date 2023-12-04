# Load necessary libraries
library(ggplot2)

# Read the dataset (replace 'path/to/your/folder/train.csv' with your file path)
data <- read.csv("C:/Users/91812/Desktop/train.csv")

# Check column names and structure of the dataset
names(data)
str(data)

# Assuming 'SalePrice' is the dependent variable and 'LotArea' represents size
# Fit a simple linear regression model
model <- lm(SalePrice ~ LotArea, data = data)

# Summary of the regression model
summary(model)

# Get the regression coefficients (slope and intercept)
slope <- coef(model)["LotArea"]
intercept <- coef(model)["(Intercept)"]

# Print coefficients
cat("Slope:", slope, "\n")
cat("Intercept:", intercept, "\n")

# Create scatter plot and add regression line
ggplot(data, aes(x = LotArea, y = SalePrice)) +
  geom_point() +
  geom_abline(intercept = intercept, slope = slope, color = "blue") +
  labs(x = "Lot Area", y = "Sale Price") +
  ggtitle("House Prices vs. Lot Area with Regression Line")
