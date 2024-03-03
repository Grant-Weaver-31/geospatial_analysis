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

wi_income_2019 <- get_acs(
  geography = "county", 
  variables = "B19013_001", 
  state = "WI",
  year = 2019,
  survey = "acs1"
)

wi_income_2019 %>%
  arrange(desc(estimate))

wi_income_2022 <- get_acs(
  geography = "county", 
  variables = "B19013_001", 
  state = "WI",
  year = 2022,
  survey = "acs1"
)

wi_income_2022 %>%
  arrange(desc(estimate))

ohio_county_income_2022 <- get_acs(
  geography = "county", 
  variables = "B19013_001", 
  state = "OH", 
  year = 2022, 
  survey = "acs1"
)


ohio_county_income_2022 %>%
  arrange(desc(estimate))

dc_income_2020 <- get_acs(
  geography = "tract", 
  variables = "B19013_001",
  state = "DC", 
  year = 2020,
  geometry = TRUE
)

plot(dc_income_2020["estimate"])









