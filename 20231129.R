# Creating a vector of numbers
numbers <- c(1,2,3,4,5)

# to print each value

print(number[[1]])
print(number[[2]])
print(number[[3]])
print(number[[4]])
print(number[[5]])

# pattern
# .x from 1 to 5

for(.x in c(1,2,3,4,5))
{
    print(numbers[[xy]])
}

howManyTimes
dataSet <- list(
  list(
    gender="male", height=178, age=32,
    children=list(
      list(gender="male", age=5),
      list(gender="male", age=0))
  ),
  list(
    gender="female", height=166, age=30,
    children=list(
      list(gender="female", age=3))
  ),
  list(
    gender="male", height=170, age=42,
    children=list(
      list(gender="male", age=10),
      list(gender="female", age=8))
  ),
  list(
    gender="male", height=188, age=22,
    children=list()
  ),  
  list(
    gender="male", height=172, age=52,
    children=list(
      list(gender="female", age=25),
      list(gender="female", age=23))
  ),
  list(
    gender="female", height=160, age=42,
    children=list(
      list(gender="female", age=11))
  )
)

analysis <- list()
analysis$number_of_children <- vector("list", length=6)

analysis$number_of_children[[1]] <-length(dataSet[[1]]$children)
analysis$number_of_children[[2]] <-length(dataSet[[2]]$children)
analysis$number_of_children[[3]] <-length(dataSet[[3]]$children)
analysis$number_of_children[[4]] <-length(dataSet[[4]]$children)
analysis$number_of_children[[5]] <-length(dataSet[[5]]$children)
analysis$number_of_children[[6]] <-length(dataSet[[6]]$children)

analysis <- list()
analysis$number_of_children <- vector("list", length=6)
for(.x in c(1, 2, 3, 4, 5, 6)){
  # .x-pattern
  analysis$number_of_children[[.x]] <-length(dataSet[[.x]]$children)
}

class(analysis$number_of_children) # a list

dataSet1 <- c('1999-03-16','1996-07-14','1998-11-06','1999-07-16','1995-09-30','1997-09-08','1998-08-08','1999-03-26','1999-02-13','1997-07-04')

# declare a fixed length container based on information type before parsing
birthdays <- vector("character", length(dataSet1))
for(.x in seq_along(dataSet1)){
  birthdays[[.x]] <- dataSet1[[.x]]
}
# parse your collected information afterward.
birthdays |> lubridate::ymd() -> birthdays

dataSet1 <- 
  data.frame(
    team=c('team 2','team 3','team 1','team 2','team 3','team 1','team 2','team 1','team 3','team 2','team 3','team 1','team 3','team 1','team 2'),
    entranceYear = c(100,100,101,100,100,100,101,100,100,101,101,100,101,100,100),
    grade=c(98,95,76,87,67,83,84,94,70,64,99,77,89,62,65)
  )

dataSet1$team |> factor() -> dataSet1$team
dataSet1$entranceYear |> factor() -> dataSet1$entranceYear
dataSet1$team:dataSet1$entranceYear -> .interaction
print(.interaction)

dataSet1 |> 
  split(.interaction) -> grouped_dataSets2

View(grouped_dataSets2)