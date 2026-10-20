# Copy paste the previous code (05_community_multivar.R)

# Plot the two densities of the tiger and the macaque one beside
par(mfrow=c(1,2))
densityPlot(tigertime)
densityPlot(macaquetime)

# Get the species names
species <- unique(kerinci$Sps)

# Set up the plotting window with two columns
par(mfrow=c(ceiling(lenght(species) / 2), 2))

# Draw one density plot for each species 
