# This is a comment and will help humans understand 

2 + 3

ant <- 2 + 3

marco <- 7 + 4

marco + ant

vale <- c(5, 10, 13, 20, 30) #samples of insect species richness

elia <- c(2, 5, 10, 40, 70) #species numbers of different taxa

plot(elia, vale) #graph about the two parameters

#If I want to change the point symbol I will use pch

plot(elia, vale, xlab="all taxa species richness", ylab="insects species richness", col="blue", pch=19, cex=.5)

#graph with names of axis (xlab, ylab), colored points (col), type of points (pch), size of points (cex)


#NEW SCRIPT 2026

#we are using the function c()
matteo <- c(5, 10, 20, 50, 80)  # an array is a set of elements: this is the array of mammal species

sum(5, 10) #YEA
sum (5, 10) #HELL NAW

elisa <- c(100, 80, 50, 20, 10) # an array of human deaths due to a disease

plot(matteo, elisa)

#changing the point character with pch()
plot(matteo, elisa, pch=19)

