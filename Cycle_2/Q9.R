# Load the Iris dataset
data(iris)

# Display the structure of the dataset
str(iris)

# Summary statistics
summary(iris)

# Check for missing values
sum(is.na(iris))

# Number of unique values in the target variable (Species)
table(iris$Species)

# Boxplot for each variable by Species
par(mfrow=c(2,2))
boxplot(Sepal.Length ~ Species, data=iris, main="Sepal Length by Species")
boxplot(Sepal.Width ~ Species, data=iris, main="Sepal Width by Species")
boxplot(Petal.Length ~ Species, data=iris, main="Petal Length by Species")
boxplot(Petal.Width ~ Species, data=iris, main="Petal Width by Species")


# Load the Iris dataset if not already loaded
data(iris)

# Perform ANOVA test
anova_result <- aov(Sepal.Length ~ Species, data = iris)

# Display the ANOVA summary
summary(anova_result)


# Install and load necessary library
install.packages("GGally")
library(GGally)

# Create a pair plot
ggpairs(iris, aes(color = Species))
