library(readr)
library(tidyverse)
library(dplyr)

#Load in Friday communication Data 
fri_comm <- read_csv("DC2-data/Communication Data/comm-data-Fri.csv")

#filter by "External" 
sus_comm_fri <- filter(fri_comm, to %in% c('external'))

#Where is most sus communication 
sus_kiddie_land <- filter(fri_comm, to %in% c('external'), location %in% c('Kiddie Land'))

sus_entry_corridor <- filter(fri_comm, to %in% c('external'), location %in% c('Entry Corridor'))

sus_tundra <- filter(fri_comm, to %in% c('external'), location %in% c('Tundra Land'))

sus_wet_land <- filter(fri_comm, to %in% c('external'), location %in% c('Wet Land'))

sus_coaster_alley <- filter(fri_comm, to %in% c('external'), location %in% c('Coaster Alley'))

#visualize these trends 
ggplot(sus_comm_fri, aes(location)) + geom_bar() +
  labs( 
    title = "Number of External Calls on Friday",
    x = "Location",
    y = "Count") +
  theme_minimal()

##Something Weird is happening at the Wet Land 

-------------------------------------------------------------------------------------------------------------------------

#Load in Saturday Communication Data
comm_data_Sat <- read_csv("DC2-data/Communication Data/comm-data-Sat.csv")

#filter by "External" 
sus_comm_sat <- filter(comm_data_Sat, to %in% c('external'))

#Visualize these trends 

ggplot(sus_comm_sat, aes(location)) + geom_bar() +
  labs( 
    title = "Number of External Calls on Saturday",
    x = "Location",
    y = "Count") +
  theme_minimal()

##Wet Land again has the most number of call made to external numbers 

-------------------------------------------------------------------------------------------------------------------------
  
  #Load in Sunday Communication Data 
  comm_data_Sun <- read_csv("DC2-data/Communication Data/comm-data-Sun.csv")
  
#filter by "External" 
sus_comm_sun <- filter(comm_data_Sun, to %in% c('external'))

#Visualize these trends 

ggplot(sus_comm_sun, aes(location)) + geom_bar() +
  labs( 
    title = "Number of External Calls on Sunday",
    x = "Location",
    y = "Count") +
  theme_minimal()

##Wet Land again