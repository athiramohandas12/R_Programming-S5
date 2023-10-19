# Function to check if a number is prime
is_prime <- function(num) {
  if (num <= 1) {
    return(FALSE)  # 1 and non-positive numbers are not prime
  }
  
  if (num == 2) {
    return(TRUE)  # 2 is prime
  }
  
  if (num %% 2 == 0) {
    return(FALSE)  # Even numbers greater than 2 are not prime
  }
  
  max_divisor <- floor(sqrt(num))
  
  for (i in 3:max_divisor) {
    if (num %% i == 0) {
      return(FALSE)  # If any divisor is found, the number is not prime
    }
  }
  
  return(TRUE)
}

# Get user input for checking a single number or a range
choice <- as.integer(readline("Enter 1 to check a single number or 2 to check a range: "))

if (choice == 1) {
  # Check a single number
  number <- as.integer(readline("Enter a number to check for primality: "))
  if (is_prime(number)) {
    cat(number, "is a prime number.\n")
  } else {
    cat(number, "is not a prime number.\n")
  }
} else if (choice == 2) {
  # Check a range of numbers
  start_num <- as.integer(readline("Enter the start of the range: "))
  end_num <- as.integer(readline("Enter the end of the range: "))
  
  cat("Prime numbers in the range ", start_num, " to ", end_num, " are:\n")
  
  for (num in start_num:end_num) {
    if (is_prime(num)) {
      cat(num, " ")
    }
  }
  cat("\n")
} else {
  cat("Invalid choice. Please enter 1 to check a single number or 2 to check a range.\n")
}