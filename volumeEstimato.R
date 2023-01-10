#Load the dyplr library
library(dplyr)

#Read measurements.csv file
measurements <- read.csv("./measurements.csv")
#Create a new column (Volume) based on the equation for a cylinder
measurememts <- measurements %>% mutate(Volume = pi*((Limb_width/2)^2)/Limb_length)
