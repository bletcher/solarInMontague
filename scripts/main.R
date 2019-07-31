library(tidyverse)

d <- read.csv(file = 'data/openpv-export-201904301246.csv', header = TRUE)

ggplot(d, aes(date_installed, size_kw)) +
  geom_point()
