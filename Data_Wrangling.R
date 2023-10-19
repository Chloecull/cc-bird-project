# Updated Data Wrangling 2.0
# With updated data sheets, complete with all data needed 
library(dplyr)
# excel added extra columns ? Remove these 
nest_tree <- nest_tree %>%select(1:7)
people_monitoring <- people_monitoring %>% select(1:20)
monitoring_data <- monitoring_data %>% select(1:12)
onem_nestpatch <- onem_nestpatch %>% select(1:7)
fivem_nestpatch <- fivem_nestpatch %>% select(1:6)
fivem_nestpatch <- fivem_nestpatch [rowSums(is.na(fivem_nestpatch)) != ncol(fivem_nestpatch), ]
onem_nestpatch <- onem_nestpatch [rowSums(is.na(onem_nestpatch)) != ncol(onem_nestpatch), ]
people_monitoring <- people_monitoring [rowSums (is.na(people_monitoring)) != ncol(people_monitoring), ]
monitoring_data <- monitoring_data [rowSums (is.na(monitoring_data)) != ncol(monitoring_data), ]
nest_tree <- nest_tree [rowSums (is.na(nest_tree)) != ncol(nest_tree), ]


install.packages("janitor")
install.packages("here")
