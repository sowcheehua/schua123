
flights <- readRDS("data/flights_week10.rds")

flightsData <- flights$data[[1]]$data_frame

dplyr::glimpse(flightsData)

# How many departure time zone?

flightsData$DepartureTimeZone |>
  table() |>
  sort(decreasing = T)->tb_departureTimeZone

dplyr::glimpse(flightsData)


library(dplyr)
library(lubridate)

flightsData <- flightsData %>%
  group_by(DepartureTimeZone) %>%
  mutate(DepartureTime = ymd_hms(DepartureTime, tz = DepartureTimeZone[[1]])) |>
  glimpse()

# 3. parse time with time zone
## split flightsData according to its timezone
flightsData |> split(flightsData$DepartureTimeZone) -> split_flightsData

head(split_flightsData[[1]], 3)
head(split_flightsData[[2]]$DepartureTimeZone, 3)
head(split_flightsData[[3]]$DepartureTimeZone, 3)

x=1

split_flightsData[[x]] |>dplyr::glimpse()
split_flightsData[[x]] |> View()

# for each sub data frame
.x=1 # say the first one

split_flightsData[[.x]]$DepartureTime <- 
  lubridate::ymd_hm(split_flightsData[[.x]]$DepartureTime, tz = split_flightsData[[.x]]$DepartureTimeZone[[1]]) 
split_flightsData[[.x]]$DepartureTime
tz = split_flightsData[[.x]]$DEpartureTimeZone[[1]]

split_flightsData[[.x]] |>
    dplr::mutate
      DepartureTime =
        lubridate::ymd_hm(
          DepartureTime,
          tz = DepartureTimeZone[[1]]
        )                 
      
# for every
      
flightsData <- flights$data[[1]]$data_frame

flightsData |>
  dplyr::group_by(DepartureTimeZone) |>
  dplyr::mutate(
    DepartureTime =
      lubridate::ymd_hm(
        DepartureTime,
        tz = DepartureTimeZone[[1]])
     ) |>
  dplyr::ungroup() ->
  flightsData
  
flightsData |>
  dplyr::group_by(AirlineID) |>
  dplyr::mutate(
    DepartureTime =
      lubridate::ymd_hm(
          DepartureTime,
             tz = DepartureTimeZone[[1]])
    
  )
  
        
    
