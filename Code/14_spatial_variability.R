# Code to estimate spatial variability of an image

library(terra)
library(imageRy)

# Listing the different available sets in imageRy
im.list()

# Importing the data
sent <- im.import("sentinel.png")

# layer 1 # NIR
# layer 2 # red
# layer 3 # green

# Exercise: plot in RGB the image putting NIR ontop of the green component
# imageRy::im.plotRGB()
# ?im.plotRGB
im.plotRGB(sent, 2, 1, 3)

# Exercise: make the same plot with the terra::plotRGB function
plotRGB(sent, 2, 1, 3, stretch="lin")

# Measuring the mean: univariate statistics

