# R coding for developing ecosystem monitoring in different times

# Packages
library(terra)
library(imageRy)

# Listing data
im.list()

# European nitrogen
EN01 <- im.import("EN_01.png")
EN01 <- flip(EN01)
plot(EN01)

# Exercise: import and plot the final image
