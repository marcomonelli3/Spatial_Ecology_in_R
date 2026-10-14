# Script for modelling the dispersion of individuals of a population

# New packages to be installed:
# install.packages("terra")
# install.packages("sdm")

# Check the packages
library(terra)
library(sdm)

# Path to the file
path <- system.file("external/species.shp", package="sdm")

# Import the vector data
rana <- vect(path)
rana

# Plotting the data
plot(rana)

# Looking at coordinates
coordinates <- geom(rana)

# SUBSET YOUR DATA!!!
# Subset the dataset extracting presences
presence <- rana[rana$Occurrence == 1] # take care of the capital letter!

# Exercise: select and assign absences
# option 1
absence <- rana[rana$Occurrence == 0]
# option 2
absence <- rana[rana$Occurrence != 1]

# Plot the presences
plot(presence)

# Plot the absences
plot(absence)

# Exercise: plot presences and absences with different colors in the same plot
plot(presence, col="blue", cex=2.5)
points(absence, col="violet", cex=2.5)

# Exercise: load the path to the elevation file
elev <- system.file("external/elevation.asc", package="sdm")

# Exercise: using the rast() function import the data
elevmap <- rast(elev)
plot(elevmap)

# Exercise: change the colors of the map
cl <- colorRampPalette(c("darkblue", "green", "lightblue"))(100)
plot(elevmap, col=cl)

# Plotting presences vs. elevation
cl <- colorRampPalette(c("red", "orange", "yellow"))(100)
plot(elevmap, col=cl)
points(presence, cex=2)

# Exercise: import and plot temperature with the cl ramp palette
temp <- system.file("external/temperature.asc", package="sdm")
tempmap <- rast(temp)
plot(tempmap, col=cl)
points(presence, cex=2)

# Exercise: import and plot precipitation with the cl ramp palette
prec <- system.file("external/precipitation.asc", package="sdm")
precmap <- rast(prec)
plot(precmap, col=cl)
points(presence, cex=2)





