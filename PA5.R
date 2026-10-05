# graded1.R
# Jonathan Phillips
# 10/04/26
# Demonstrate the cat() function and argument matching

# Demonstrate a simple use of the cat() function
cat("My name is Jonathan Phillips and I am learning R.\n")

# Create a function with three arguments
showInfo <- function(first, middle, last) {
  cat("First:", first, "\n")
  cat("Middle:", middle, "\n")
  cat("Last:", last, "\n")
}

# Demonstrate positional argument matching
showInfo("Jonathan", "Michael", "Phillips")

# Demonstrate named argument matching
showInfo(first = "Jonathan", middle = "Michael",
         last = "Phillips")

# Demonstrate partial argument matching
showInfo(fir = "Jonathan", mid = "Michael",
         las = "Phillips")

# Create a data frame showing the three matching types
matchingData <- data.frame(
  Matching = c("Positional", "Named", "Partial"),
  First = c("Jonathan", "Jonathan", "Jonathan"),
  Middle = c("Michael", "Michael", "Michael"),
  Last = c("Phillips", "Phillips", "Phillips")
)

# Write the data frame to a CSV file
write.csv(matchingData, "matchingData.csv", row.names = FALSE)

# Remove the data frame from the environment
rm(matchingData)

# Restore the data frame from the CSV file
matchingData <- read.csv("matchingData.csv")

# View the restored data frame
View(matchingData)
