
# this is my initial code
14 + 14
7 + 7

20 * 4
3 + 5
20 * 5
20 * 5 
Hello  


greet <- function(name) {
  message <- paste("Buenas buenas,", name)
  return(message)
}

greet(name="Duende verde")


maca <- c(2,3,4,5,6)
rron <- c(2,3,4,5,6)
maca + rron

holo <- c(3,3,3)
causto <- c(3,3,3)

holo + causto
c <- (holo + causto)
c


my_list <- list(
  Numbers = c(1,2,3),
  Words = c("Manolo", "Joaquin", "Maria")
)

  my_list  
getwd()  
getwd()

install.packages("palmerpenguins")
install.packages("ggplot2")

library(palmerpenguins)
library(ggplot2)

ggplot(data = penguins, aes(x = flipper_length_mm, 
                            y = body_mass_g)) +
  geom_point(aes(color = species, shape = species))


plot <- ggplot(data=penguins,
               aes(x=flipper_length_mm,
                   y=body_mass_g))+
  geom_point(aes(color=species,
                 shape=species))

plot       
       
data(penguins)
View(penguins)
