# Function to generate the series
generate_series <- function(terms) {
  if (terms <= 0) {
    return(NULL)  # Return NULL for invalid or zero terms
  }
  
  if (terms == 1) {
    return(0)  # First term
  }
  
  if (terms == 2) {
    return(c(0, 1))  # First two terms
  }
  
  series <- numeric(terms)
  series[1:2] <- c(0, 1)  # Initialize the first two terms
  
  for (i in 3:terms) {
    series[i] <- sum(series[(i - 2):(i - 1)]) + series[i - 3]  # Sum of last three terms
  }
  
  return(series)
}

# Get the number of terms from the user
terms <- as.integer(readline("Enter the number of terms in the series: "))

# Generate the series
result <- generate_series(terms)

if (is.null(result)) {
  cat("Please enter a valid number of terms (greater than 0).\n")
} else {
  cat("The generated series with", terms, "terms is:\n")
  cat(result, sep = ", ", "\n")
}