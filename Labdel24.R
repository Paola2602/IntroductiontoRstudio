



library(dplyr)

n_s <- starwars |> 
mutate(new_height = ifelse(height > 100,
                          "tall",
                          "small"))

select(height, new_height, everything())
n_s


library(ggplot2)

starwars |> 
  mutate(new_height = ifelse(height > 100,
                             "tall",
                             "small")) |> 
  ggplot(aes(x=height, 
           fill = new_height)) +
  geom_histogram()





# Basic stats -------------------------------------------------------------

starwars |> 
  summarise(mean_height = 
              mean(height, na.rm=T))

starwars |> 
  group_by(species) |> 
  summarise(
    mean_height = mean(height, na.rm = TRUE),
    sd_height = sd(height, na.rm = TRUE)
  )


n_s |> 
  group_by(new_height) |> 
  summarise(
    mean_height = mean(height, na.rm = TRUE),
    sd_height = sd(height, na.rm = TRUE))

n_s |> 
  group_by(new_height, homeworld) |> 
  summarise(
    mean_height = mean(height, na.rm = TRUE))

n_s |> 
  group_by(new_height) |> 
  count(homeworld)

n_s |> sample_n(5)  




