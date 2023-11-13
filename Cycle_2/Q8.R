# Load necessary libraries
library(ggplot2)

# Plot the histogram
titanic_data <- read.csv("C:/Users/91812/Downloads/archive (3)/Titanic-Dataset.csv")

# Now, you can run the ggplot code
library(ggplot2)

ggplot(titanic_data, aes(x = Parch)) +
  geom_histogram(binwidth = 1, fill = "skyblue", color = "black", alpha = 0.7) +
  labs(title = "Histogram of Number of Parents and Children (Parch)",
       x = "Number of Parents and Children",
       y = "Frequency") +
  theme_minimal()
 




# Check for missing values
missing_values <- sapply(titanic_data, function(x) sum(is.na(x)))
print("Missing Values:")
print(missing_values)

# Assuming 'titanic_data' is your data frame
# Replace missing values with the median for numerical columns
titanic_data$Age[is.na(titanic_data$Age)] <- median(titanic_data$Age, na.rm = TRUE)
titanic_data$Fare[is.na(titanic_data$Fare)] <- median(titanic_data$Fare, na.rm = TRUE)

# For categorical columns, you might want to replace with the mode or another appropriate strategy
# For example, if 'Embarked' is a categorical column
# titanic_data$Embarked[is.na(titanic_data$Embarked)] <- mode(titanic_data$Embarked)

# Create a boxplot with outlier detection for the 'Age' column
ggplot(titanic_data, aes(x = "Age", y = Age)) +
  geom_boxplot( fill = "lightblue", color = "blue") +
  labs(title = "Boxplot of Age",
       x = "Age",
       y = "Value") +
  theme_minimal()



# Load necessary libraries
library(ggplot2)

# Customized box plot
ggplot(titanic_data, aes(x = Survived, y = Age, fill = factor(Survived))) +
  geom_boxplot() +
  labs(title = "Age Distribution of Survivors and Non-Survivors",
       x = "Survival Status",
       y = "Age") +
  scale_fill_manual(values = c("skyblue", "lightgreen")) +  # Custom colors
  theme_minimal()

