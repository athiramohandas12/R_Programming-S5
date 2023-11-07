# Load the ggplot2 library
library(ggplot2)

# Create a histogram using ggplot2
mpg_hist <- ggplot(mtcars, aes(x = mpg, fill = ..count..)) +
  geom_histogram(binwidth = 2, color = "white") +
  scale_fill_gradient(low = "lightblue", high = "darkblue") +
  labs(
    title = "Histogram of Miles per Gallon (mpg)",
    x = "Miles per Gallon (mpg)",
    y = "Frequency"
  ) +
  annotate("text", x = 20, y = 10, label = paste("Mean: ", round(mean(mtcars$mpg, na.rm = TRUE), 2)), size = 4, color = "white") +
  annotate("text", x = 20, y = 8, label = paste("Std Dev: ", round(sd(mtcars$mpg, na.rm = TRUE), 2)), size = 4, color = "white")

# Display the histogram with mean and standard deviation
print(mpg_hist)

