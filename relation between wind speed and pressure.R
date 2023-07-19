library(tidyverse)
#load dataset dataframe
storms
ggplot(storms)+
  geom_point(mapping = aes(x = pressure ,y = wind , colour = status))+
  facet_wrap(~status)
