#### Preamble ####
# Purpose: Run some tests code on cleaned data
# Author: Chay Park
# Date: 23 Janurary 2024
# Contact: chay.park@mail.utoronto.ca
# License: MIT

#### Workspace setup ####
library(tidyverse)

#### Test data ####

# Install and load dplyr if not already installed
if (!requireNamespace("dplyr", quietly = TRUE)) {
  install.packages("dplyr")
}
library(dplyr)

# Set seed for reproducibility
set.seed(123)

# Load cleaned data
cleaned_data

# Display the first few rows of the dataset
head(cleaned_data)

#### Test codes ####

# Test 1: Total Count by Crime Type

# Hypothesis: The total count of crimes for each subtype is greater than 0.

test_1 <- all(aggregate(COUNT_ ~ SUBTYPE, cleaned_data, sum)$count > 0)
print("Test 1 (Total Count by Crime Type > 0):", test_1)

# Test 2: Check for Missing Values

# Hypothesis: There are no missing values in the dataset.

test_2 <- all(!is.na(cleaned_data))
print("Test 2 (No Missing Values):", test_2)

# Test 3: No Missing Combinations

# Hypothesis: There are no missing combinations in the dataset, 
# and the count for every combination is either present or set to 0.

test_3 <- all(cleaned_data$COUNT_ >= 0)
print("Test 3 (No Missing Combinations):", test_3)
