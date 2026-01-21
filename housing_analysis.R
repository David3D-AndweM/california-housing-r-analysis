# R Programming Assignment - California Housing Data

# Read the CSV data
data <- read.csv("housing.csv")

# Look at the first few rows of data
head(data)

# Load dplyr library for filter and select
library(dplyr)

# Filter data - keep houses with median_house_value > 200000
filtered_data <- filter(data, median_house_value > 200000)

# Select specific columns - longitude, latitude, median_house_value
selected_data <- select(filtered_data, longitude, latitude, median_house_value)

# Create a histogram of median_house_value
hist(selected_data$median_house_value, main="Histogram of Median House Value", xlab="Median House Value", col="blue")
