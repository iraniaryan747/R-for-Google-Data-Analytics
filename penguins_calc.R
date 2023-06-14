penguins %>% 
  select(-species)

penguins %>% 
  rename(island_new=island)

penguins2 <- penguins %>% arrange(-bill_length_mm)
View(penguins2)

#obtaining mean bill length
penguins %>% 
  group_by(island)%>%
  drop_na() %>% 
  summarize(mean_bill_length_mm = mean(bill_length_mm))

#obtaining max bill length
penguins %>% 
  group_by(island)%>%
  drop_na() %>% 
  summarize(max_bill_length_mm = max(bill_length_mm))

#obtaining max and mean
penguins %>% 
  group_by(species,island)%>%
  drop_na() %>% 
  summarize(mean_bl = mean(bill_length_mm), max_bl = max(bill_length_mm))

#obtaining only Adelie specie penguins
penguins %>% 
  filter(species == 'Adelie')

#adding column of body_mass_kg
penguins %>% 
  mutate(body_mass_kg=body_mass_g/1000, flipper_length_m =flipper_length_mm/1000)
View(penguins)