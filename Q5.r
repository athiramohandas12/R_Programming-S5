# Function to calculate the sum of the series
calculate_series_sum <- function(terms) {
  if (terms <= 0) {
    return(0)  # Return 0 for invalid or zero terms
  }
  
  series_sum <- 0
  sign <- 1  # To alternate between addition and subtraction
  
  for (i in 1:terms) {
    # Calculate the current term in the series
    term <- i / (2 * i - 1) * sign
    
    # Add or subtract the term from the sum
    series_sum <- series_sum + term
    
    # Change the sign for the next term
    sign <- -sign
  }
  
  return(series_sum)
}

# Get the number of terms from the user
terms <- as.integer(readline("Enter the number of terms in the series: "))

# Calculate the sum of the series
series_sum <- calculate_series_sum(terms)

# Display the result
cat("The sum of the series with", terms, "terms is:", round(series_sum, 4), "\n")