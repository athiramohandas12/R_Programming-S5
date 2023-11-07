# Load the ggplot2 library
library(ggplot2)

# Create a box plot using ggplot2
boxplot_plot <- ggplot(mtcars, aes(x = factor(gear), y = hp, shape = factor(gear))) +
  geom_boxplot() +
  labs(
    title = "Box Plot of Horsepower by Number of Gears",
    x = "Number of Gears",
    y = "Horsepower (hp)"
  ) +
  scale_shape_manual(values = c("3" = 3, "4" = 15, "5" = 17)) +  # Set shapes for gears
  guides(shape = guide_legend(title = "Number of Gears"))

# Identify and label outliers
outliers <- boxplot.stats(mtcars$hp)$out
boxplot_plot + geom_text(data = data.frame(gear = factor(rep(3:5, each = length(outliers))), hp = rep(outliers, times = 3)), aes(x = gear, y = hp, label = round(hp, 1)), nudge_x = 0.2, nudge_y = 20)
