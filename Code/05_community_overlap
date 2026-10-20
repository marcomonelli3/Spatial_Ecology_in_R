#Script to estimate the amount of temporal overlap of different species

install.packages("overlap") 

library(overlap)

data(kerinci)
head(kerinci)

circtime <- kerinci$Time * 2 * pi
circtime 

kerinci$circtime <- kerinci$Time * 2 * pi
head(kerinci)

tiger <- kerinci[kerinci$Sps == "tiger",]
densityPlot(tiger$circtime)

tigertime <- tiger$circtime

--------------------------------------------------------------------------------------------------------------------------------------
# Once we have seen how species are related to each other is space we can proceed to look at how they are related to each other in time

# install.packages("overlap")
library(overlap)

# Using the dataset
data(kerinci) # https://it.wikipedia.org/wiki/Parco_nazionale_di_Kerinci_Seblat

kerinci
head(kerinci)

# If you want to look at the end of the dataset: tail()
tail(kerinci)

# Getting a summary of the dataset
summary(kerinci)

# Circular time
circulartime <- kerinci$Time * 2 * pi

# Putting the circular time inside the dataset
kerinci$Timecirc <- kerinci$Time * 2 * pi

# Looking at the new column
head(kerinci)

# Subsetting the dataset with the selection of the species tiger
tiger <- kerinci[kerinci$Sps=="tiger",]

summary(tiger)

# Density plot of spreading pf the tiger in the area in different times
densityPlot(tiger$Timecirc)

# Alternative method: create the time variable from the tiger dataset and use it in the calculation
tigertime <- tiger$Timecirc
densityPlot(tigertime)

# Selecting a column will not necessarily require the name
# tigertime <- tiger[4]

# Exercise: select all the rows of the kerinci dataset with he species macaque
macaque <- kerinci[kerinci$Sps=="macaque",]

# Check the set
head(macaque)

# Exercise: how to be sure that only macaque species has been selected
summary(macaque) #being lazy is beautiful!

# Exercise: make the density plot of the macaque
macaquetime <- macaque$Timecirc
densityPlot(macaquetime)

# Overlap the two distributions
overlapPlot(tigertime, macaquetime)

# Changing the graph
overlapPlot(tigertime, macaquetime, linetype=c(3,1))

# Changing the line colors
overlapPlot(tigertime, 
macaquetime, 
linetype=c(3,1),
linecol=c("cyan3", "coral"))

# Changing the overlap color
overlapPlot(tigertime, 
macaquetime, 
linetype=c(3,1),
linecol=c("cyan3", "coral"),
olapcol=c("deeppink"))



