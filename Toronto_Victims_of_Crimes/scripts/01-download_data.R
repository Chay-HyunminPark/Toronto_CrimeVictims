#### Preamble ####
# Purpose: Downloads and saves the data from opendatatoronto
# Author: Chay Park
# Date: 20 January 2024
# Contact: chay.park@mail.utoronto.ca
# License: MIT
# Pre-requisites: download the actual data in a reproducible way using opendatatoronto. 
# Save the data: "inputs/data/unedited_data.csv"

#### Save data ####

# Install the package
# install.packages(c("opendatatoronto", "knitr", "lubridate", "tidyverse"))

# See a list of available packages
library(knitr)
library(lubridate)
library(opendatatoronto)
library(tidyverse)

packages <- list_packages(limit = 10)
packages

# Search packages by title
victims_packages <- search_packages("victims")

victims_packages

# List resources from package
victims_resources <- victims_packages %>%
  list_package_resources()

victims_resources

# Download the resources
victims_statistics <- victims_resources %>%
  head(1) %>%
  get_resource()

victims_statistics

# Write CSV file
write_csv(
  x = victims_statistics,
  file = "Toronto_Victims_of_Crimes/inputs/data/unedited_data.csv"
)
head(victims_statistics)