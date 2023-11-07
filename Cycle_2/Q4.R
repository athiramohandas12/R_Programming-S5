# Load the ggplot2 library
library(ggplot2)

# Create a bar plot using ggplot2
ggplot(mtcars, aes(x = factor(cyl), fill = factor(am))) +
  geom_bar() +
  labs(
    title = "Number of Cylinders by Transmission Type",
    x = "Number of Cylinders",
    y = "Count"
  ) +
  scale_fill_manual(values = c("0" = "red", "1" = "blue")) +  # Define colors for transmission types
  guides(fill = guide_legend(title = "Transmission Type"))
