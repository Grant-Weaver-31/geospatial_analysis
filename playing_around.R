# Package needed for analysis
library(tidycensus)
library(tidyverse)
library(ggplot2)


# census api key
census_api_key("0b41b8a24650683a81029106e91b0193feeb0eaf", install = TRUE, overwrite = TRUE)

# State population in 2010
total_population_10 <- get_decennial(
  geography = "state", 
  variables = "P001001",
  year = 2010
)

# This shows that the connection to the census api is working. 










