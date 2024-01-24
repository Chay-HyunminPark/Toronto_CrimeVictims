library(dplyr)
library(knitr)
library(lubridate)
library(tidyverse)

# Read the CSV file
unedited_data <- read.csv("inputs/data/unedited_data.csv")

# Filter out unknown values for SEX and rows with 'other' values for SUBTYPE
cleaned_data <- unedited_data %>%
  filter(SEX %in% c("M", "F") & AGE_GROUP != "Unknown" & SUBTYPE != "Other")

# Write and download cleaned_CSV file
write_csv(
  x = cleaned_data,
  file = "inputs/data/cleaned_data.csv"
)
head(cleaned_data)