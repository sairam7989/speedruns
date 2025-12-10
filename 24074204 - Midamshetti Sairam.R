# 24074204 - Midamshetti Sairam

# Load Libraries
if (!require("ggplot2")) install.packages("ggplot2")
if (!require("dplyr")) install.packages("dplyr")
if (!require("lubridate")) install.packages("lubridate")
library(ggplot2)
library(dplyr)
library(lubridate)

# Loading all CSV Data
file_list <- list.files(pattern = "*.csv")

# Read each file and adding a 'category' column based on filename
data_list <- lapply(file_list, function(file) {
  df <- read.csv(file)
  category_name <- gsub("data_", "", gsub(".csv", "", file))
  df$category <- category_name
  return(df)
})