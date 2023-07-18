# summarise dataset
library(tidyverse)

data_storms <- storms
view(data_storms)
# calculate mean for specific variable
mean(storms$wind)
# 50.01741
# calculate standard deviation for specific variable
sd(storms$wind)
# give result of 25.501
#remove na values
sd(storms$wind, na.rm = TRUE)
summary(data_storms)
# can extract information about 5 percents for each variable in that dataset

max(data_storms$wind)
# crete a histogram to visulaize that data 
ggplot(data_storms,aes(wind))+
  geom_histogram()
