library(readr)
library(tidyverse)
New_York_City_Leading_Causes_of_Death <- read_csv("New_York_City_Leading_Causes_of_Death.csv")
unique(New_York_City_Leading_Causes_of_Death$`Leading Cause`)

Suicide <- New_York_City_Leading_Causes_of_Death %>%
    filter(str_detect(New_York_City_Leading_Causes_of_Death$`Leading Cause`,"Intentional Self-Harm"))
as_tibble(Suicide)


