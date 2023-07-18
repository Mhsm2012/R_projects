library(tidyverse)
# library tidverse
#load data starwars
data <- starwars
#show data 
show(data)
#make a table of starwars data that show eye_color count
table(starwars$eye_color)
# make a prop table that show proporations of eye color in data
prop.table(table(starwars$eye_color))
