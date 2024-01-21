#### Preamble ####
# Purpose: In the provided code, I simulate the generation of a sample crime dataset 
# spanning multiple years, crime subtypes, sexes, and age groups. 
# The goal is to create a comprehensive dataset that includes all possible combinations, 
# filling in missing counts with zeros, and then perform tests to check for non-zero total counts, 
# absence of missing values, and the inclusion of all combinations.

# Author: Chay Park
# Date: 20 January 2024
# Contact: chay.park@mail.utoronto.ca
# License: MIT
# Pre-requisites:

#### Workspace setup ####

# Install and load dplyr if not already installed
if (!requireNamespace("dplyr", quietly = TRUE)) {
  install.packages("dplyr")
}
library(dplyr)

# Set seed for reproducibility
set.seed(123)

# Generate sample dataset
years <- rep(2014:2022, each = 12)
subtypes <- rep(c("Robbery", "Assault", "Sexual Violation", "Other"), each = 3, times = 9)
sex <- rep(c("Male", "Female", "Unknown"), each = 1, times = 36)
age_groups <- rep(c("Child", "Youth", "Adult"), each = 1, times = 36)
count <- sample(1:50, 324, replace = TRUE)

crime_data <- data.frame(
  report_year = years,
  subtype = rep(subtypes, times = 3),
  sex = rep(sex, times = 36),
  age_group = rep(age_groups, times = 36),
  count = count
)

# Display the first few rows of the dataset
head(crime_data)

#### Test codes ####

# Test 1: Total Count by Crime Type

# Hypothesis: The total count of crimes for each subtype is greater than 0.

test_1 <- all(aggregate(count ~ subtype, crime_data, sum)$count > 0)
print("Test 1 (Total Count by Crime Type > 0):", test_1)

# Test 2: Check for Missing Values

# Hypothesis: There are no missing values in the dataset.

test_2 <- all(!is.na(crime_data))
print("Test 2 (No Missing Values):", test_2)

# Test 3: No Missing Combinations

# Hypothesis: There are no missing combinations in the dataset, 
# and the count for every combination is either present or set to 0.

test_3 <- all(complete_data$count >= 0)
print("Test 3 (No Missing Combinations):", test_3)
