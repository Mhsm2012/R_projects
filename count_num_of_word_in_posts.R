library(dplyr)    # or if you want it all, `library(tidyverse)`
library(tidytext)
posts
data_frame (posts) %>% unnest_tokens(word,posts)%>% anti_join(stop_words) %>% count(word,sort=TRUE)