
flights = readRDS("data/flights.rds")
str(flights)

flightsData <- flights$data[[1]]$data_frame

# ERROR package dplyr not found

head(flightsData)

class(flightsData$AirlineID)

"1" +3
"2023-01-14" +1

householdIncomes <- c(
  "middle income", "high income", "middle income", "low income",
  "middle income", "high income", "high income", "low income",
  "high income", "middle income", "high income", "middle income"
)

class(householdIncomes)

householdIncomes[[1]] < "high income"

flightsData$AirlineID <- factor(
  
  class(flightsData$ScheduleStartDate)
)
ord_fct_householdIncome[[1]] < "high income"
levels(ord_fct_householdIncome)
