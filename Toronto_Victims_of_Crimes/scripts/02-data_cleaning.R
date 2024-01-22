library(dplyr)
library(knitr)
library(lubridate)
library(tidyverse)

# Check and set the working directory if needed
# setwd("project/Toronto_Victims_of_Crimes")

# Read the CSV file
crime_data <- read.csv("Toronto_Victims_of_Crimes/inputs/data/unedited_data.csv")

# Filter out unknown values for SEX and rows with 'other' values for SUBTYPE
filtered_data <- crime_data %>%
  filter(SEX %in% c("M", "F") & SUBTYPE %in% c("Robbery", "Sexual violation", "Assault"))
