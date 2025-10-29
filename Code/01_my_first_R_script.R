# This is a comment and will help humans understand 

2 + 3

naza <- 2 + 3

marco <- 7 + 4

vale <- c(5, 10, 13, 20, 30) #samples of insect species richness

elia <- c(2, 5, 10, 40, 70) #species numbers of different taxa

plot(elia, vale) #graph about the two parameters

#If I want to change the point symbol I will use pch

plot(elia, vale, xlab="all taxa species richness", ylab="insects species richness", col="blue", pch=19, cex=.5)

#graph with names of axis (xlab, ylab), colored points (col), type of points (pch), size of points (cex)
