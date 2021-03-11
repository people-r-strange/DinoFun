library(readr)
library(dplyr)

#load in movement data for Friday
park_movement_Fri <- read_csv("DC2-data/Movement Data/park-movement-Fri.csv")

#load in communication data for Friday 
comm_data_Fri <- read_csv("DC2-data/Communication Data/comm-data-Fri.csv")

#plot movement 

coordinates_Fri <- select(park_movement_Fri, X,Y) 

ggplot(data=coordinates_Fri, aes(X,Y)) + geom_point()

