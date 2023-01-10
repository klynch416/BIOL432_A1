#Create a matrix with 4 columns (Species, Limb_length, Limb_width, Observer) and 100 rows for entries
measurements <- matrix(nrow=100, ncol = 4)

#Randomly sample 100 species/observer names from the given list and assign it to one of the matrix columns
measurements[,1] <- sample(size = 100, c("Hydrurga leptonyx", "Setonix brachyurus", "Tyto alba", "Rhincodon typus", "Bison bison"), replace = T)
measurements[,4] <- sample(size = 100, c("Sam L", "Cassie C", "David J"), replace = T)

#Run through the matrix one at a time, randomly sample one value within the parameter set 
#for each species name (corresponding with i) 
for (i in 1:100){
  if(measurements[i,1] == "Hydrurga leptonyx"){
    measurements[i,2] <- runif(1, min = 0, max = 40)
    measurements[i,3] <- runif(1, min = 0, max = 20)
  } else{
    if(measurements[i,1] == "Setonix brachyurus"){
      measurements[i,2] <- runif(1, min = 0, max = 20)
      measurements[i,3] <- runif(1, min = 0, max = 5)
    } else{
      if(measurements[i,1] == "Tyto alba"){
        measurements[i,2] <- runif(1, min = 0, max = 10)
        measurements[i,3] <- runif(1, min = 0, max = 3)
      } else{
        if(measurements[i,1] == "Rhincodon typus"){
          measurements[i,2] <- runif(1, min = 0, max = 100)
          measurements[i,3] <- runif(1, min = 0, max = 40)
        } else{
          measurements[i,2] <- runif(1, min = 0, max = 100)
          measurements[i,3] <- runif(1, min = 0, max = 30)
        }
      }
    }
  }
}

#Transform measurements matrix into a data frame + rename columns and export it into a CSV file
measurements <- as.data.frame(measurements)
colnames(measurements) <- c("Species", "Limb_length", "Limb_width", "Observer")
write.csv(measurements, "measurements.csv")

