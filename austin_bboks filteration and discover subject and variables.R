#install and use pakages that needed in your project
library(tidyverse)
library(tidytext)
library(janeaustenr)
library(stringr)
austen_books()
#Get the Jane Austen books from the package janeaustenr and do some cleaning.
original_books <- austen_books() %>% group_by(book) %>% mutate(linenumber=row_number(),
                                                               chapter = cumsum(str_detect(text,regex("^chapter [\\divxlc]",ignore_case =TRUE))))%>% ungroup()
# check original_books
original_books
3 to know dimensions of the datasets
dim(original_books)     
summary(original_books)
#visulaize dataset
ggplot(original_books,aes(book))+
  geom_bar()
