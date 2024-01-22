library(dplyr)
library(knitr)
library(lubridate)
library(tidyverse)

# Read the CSV file
crime_data <- read.csv("Toronto_Victims_of_Crimes/inputs/data/unedited_data.csv")

# Filter out unknown values for SEX and rows with 'other' values for SUBTYPE
filtered_data <- crime_data %>%
  filter(SEX %in% c("M", "F") & AGE_GROUP != "Unknown" & SUBTYPE != "Other")

# Write cleaned_CSV file
write_csv(
  x = filtered_data,
  file = "Toronto_Victims_of_Crimes/inputs/data/cleaned_data.csv"
)
head(filtered_data)