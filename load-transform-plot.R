

artists <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2022/2022-09-27/artists.csv')

write.csv(artists, file = './data/artists.csv', row.names = FALSE)

artists <- read.csv('./data/artists.csv')

library(usmap)
library(ggplot2)
library(png)


plot_usmap("state", data = artists, values = 'location_quotient')
