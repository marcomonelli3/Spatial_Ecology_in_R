# Code to visualize remote sensing data

# Zenodo set: https://zenodo.org/records/15645465
# install.packages("imageRy")

library(imageRy)
library(terra)
library(viridis)

# Listing data inside imageRy (Checking the data)
im.list()

# Importing the first band
b2 <- im.import("sentinel.dolomites.b2.tif")
plot(b2)

# Change the palette thanks to virididis package
plot(b2, col=inferno(100))

# Exercise: import the green band of sentinel and plot it with the magma legend
b3 <- im.import("sentinel.dolomites.b3.tif")
plot(b3, col=magma(100))

# Make a multiframe with one image besides the other
par(mfrow=c(1,2))
# or
im.multiframe(1,2)
plot(b2, col=cl)
plot(b3, col=cl)



# Exercise: import the red band (band number 4)
b4 <- im.import("sentinel.dolomites.b4.tif")
plot(b4, col=cividis(100))

# Exercise: import the infrared band (band number 8)
b8 <- im.import("sentinel.dolomites.b8.tif")
plot(b8)

# Build a 4x4 multiframe and plot all the bands with the default palette
im.multiframe(2,2)
plot(b2)
plot(b3)
plot(b4)
plot(b8)

# multiframe and colorRamp Palette
clb <- colorRampPalette(c("blue4", "blue1", "cadetblue1"))(100)
plot(b2, col=clb)

# Exercise: do the same for the b3 - green band
clg <- colorRampPalette(c("darkolivegreen", "chartreuse3", "chartreuse"))(100)
plot(b3, col=clg)
# or red band
clr <- colorRampPalette(c("firebrick4", "firebrick3", "firebrick"))(100)
plot(b4, col=clr)
# band number 8: NIR band
cln <- colorRampPalette(c("magenta", "green", "yellow"))(100)
plot(b8, col=cln)

# Create a stack of all bands togheter with a new object called sent considering...
sent <- c(b2, b3, b4, b8)
plot(sent, col=magma(100))

# Reversing colors
plot(sent, col=magma(100, direction=-1))

# Stack by the imagery package:
sentinel <- im.import("sentinel.dolomites")
plot(sent, col=mako(100))

# Exercise: starting from the stack called sentinel plot only the NIR band


# layer 1 = original (from Sentinel-2) b2 = blue
# layer 2 = original (from Sentinel-2) b3 = green
# layer 3 = original (from Sentinel-2) b4 = red
# layer 4 = original (from Sentinel-2) b8 = NIR

# natural color image
im.plotRGB(sent, r=3, g=2, b=1, title='natural color')

# false color image
im.plotRGB(sent, r=4, g=3, b=2, title='false color')
im.plotRGB(sent, r=3, g=4, b=2, title='false color')
im.plotRGB(sent, r=3, g=2, b=4, title='false color')

duccio(2,2)
im.plotRGB(sent, r=3, g=2, b=1, title='natural color')
im.plotRGB(sent, r=4, g=3, b=2, title='false color')
im.plotRGB(sent, r=3, g=4, b=2, title='false color')
im.plotRGB(sent, r=3, g=2, b=4, title='false color')


im.plotRGB(x, r, g, b, title = "")
