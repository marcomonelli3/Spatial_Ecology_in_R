# R code for population density

# Installing packages
install.packages("spatstat")

#Using the package(s)
library(spatstat)

# Recall the data
bei

# Looking at the plot in space
plot(bei)

# Changing the pch
plot(bei, pch=15)

# Decreasing the dimension
plot(bei, pch=15, cex=.5)

# Drivers
bei.extra

# Plotting variables
plot(bei.extra)

# Subsetting a dataset: NEW CONCEPT!
# There are 2 different meters to make a subset:
# first: name of the variable and a $ symbol
# second: number of the layer and [] for tables and [[]] for map layers

elevation <- bei.extra$elev
#output
elevation

# Plot elevation
plot(elevation)

# Subset by the number of the layer/variable
elevation2 <- bei.extra[[1]]

# In case bei.extra was a table: bei.extra[1]

# Plot the new object
plot(elevation2)
