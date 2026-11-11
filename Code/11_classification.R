# R code for classifying images thanks to k-means:
# https://github.com/ducciorocchini/Spatial_Ecology_in_R_2026/blob/main/kmeans.md

# packages
library(terra)
library(imageRy)

# List of the data
im.list()

# Exercise: import the Solar Orbiter image and give and assign it to the object called "sun"
sun <- im.import("Solar_Orbiter_s_first_views_of_the_Sun_pillars.jpg")

# Classify the data 
sunclass <- im.classify(sun, num_clusters=3)

# Seed
sunclass <- im.classify(sun, num_clusters=3, seed=42)

# Importing data of Matogrosso
# Exercise: import the data of Mato Grosso and give them names m1992 and m2006
m1992 <- im.import("matogrosso_l5_1992219_lrg.jpg")
m2006 <- im.import("matogrosso_ast_2006209_lrg.jpg")
