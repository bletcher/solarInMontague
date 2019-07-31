library(tidyverse)
library(janitor)

d <- read.csv(file = 'data/MA_Statewide_PV_Data_Mass_CEC_07012019.csv', header = TRUE) %>%
     clean_names("lower_camel")

distinct(d, facilityType)

dRes <- d %>% filter(facilityType == 'Residential (3 or fewer dwelling units per building)')

ggplot(dRes, aes(dateInService, iCapacityDcKW)) +
  geom_point()
