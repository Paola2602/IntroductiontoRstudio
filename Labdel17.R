



citation()
install.packages("ggplot2")
library(ggplot2) # always!

citation("ggplot2")
?lm


data("penguins")
View(penguins)
head(penguins,20)
tail(penguins,3)

# Second column
sec.colum <- penguins[, 2]
sec.colum

mean(penguins$body_mass)

table(penguins$island)
prop.table(table(penguins$island))

summary(penguins)


my_function <- function(input) {
  Body
  return(output)
}

C <- function(temp_F) {
  temp_C <- (temp_F - 32) * 5 / 9
  return(temp_C)
}


View(sub)
View(C)
C(100)


data_storms <- read.csv("storms.csv")

# New function ----------------------------------------------------------
storms <- read.csv("storms.csv")
summary(storms)

hurricane <- storms[storms$status == "hurricane",]
head(hurricane)

# select specific columns
hurricane <- hurricane[, c("name", "year", 
                           "category", "pressure", 
                           "wind")]
head(hurricane)


# create a function to classify wind velocity
classify_wind <- function(wind){
  if(wind<80){
    "Low"
  }else if(wind<110){
    "Moderate"
  }else {
    "High"
  }
}

#new class
hurricane$windclass <- sapply(
  hurricane$wind,
  classify_wind
)

head(hurricane)

head(hurricane)
table(hurricane$windclass)
  
  

height <- 175
height
