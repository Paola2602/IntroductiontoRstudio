



head(starwars)
View(starwars)


# Practice ----------------------------------------------------------------


starwars |> 
  filter(species == "Droid")

only_droids <- starwars |> 
  filter(species == "Droids")
only_droids

filter <- starwars |> 
  filter(skin_color == "light",
         eye_color == "yellow")
. <- filter(starwars, skin_color == "light" & eye_color == "brown")
.

starwars |> 
  arrange(desc(height))


# Columns --------------------------------------------------------------------

col <- starwars |> 
  select(hair_color,
         skin_color,
         eye_color)
col


except <- starwars |> 
  select(!(species))
except


starwars |> 
  select(contains('w'))




newstarwars <- starwars |>  
  mutate(mass_new = mass * 1000)
newstarwars

newstarwars |> 
  select(mass_new, mass, everything())

newstarwars2 <- starwars |> 
  mutate(mass_new = mass / 10,
         .keep = "none")
newstarwars2
