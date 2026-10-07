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
elevation <- bei.extra$elev


