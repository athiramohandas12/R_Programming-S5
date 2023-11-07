

# Load necessary R packages
library(ggplot2)
library(zoo)

# Read your COVID-19 time series data from a CSV file (please adjust the file path)
covid_data <- read.csv("C:/Users/91812/Downloads/archive(1)/time-series-19-covid-combined.csv")

# Convert the date column to a Date data type
covid_data$Date <- as.Date(covid_data$Date)

# Create a time series object, assuming daily data
time_series <- ts(covid_data$Confirmed, start = start(covid_data$Date), end = end(covid_data$Date), frequency = 1)

# Calculate a 7-day moving average to capture trends using rollmean
moving_average <- rollmean(time_series, k = 7, fill = NA)

# Create a data frame for plotting
plot_data <- data.frame(Date = covid_data$Date, Confirmed = covid_data$Confirmed, MovingAverage = moving_average)

# Generate a time series plot showing the original data and the moving average
ggplot(plot_data, aes(x = Date)) +
  geom_line(aes(y = Confirmed), color = "blue", size = 1) +
  geom_line(aes(y = MovingAverage), color = "red", size = 1, alpha = 0.7) +
  labs(title = "COVID-19 Time Series with 7-Day Moving Average",
       x = "Date",
       y = "Confirmed Cases") +
  scale_y_continuous(labels = scales::comma)  # Format y-axis labels with commas

# Save the plot as an image file (you can change the filename and format)
ggsave("covid19_time_series_plot.png")
