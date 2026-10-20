#Code for performing multivariate analysis with community abundance matrices

#install.package("vegan")
library(vegan)

data(dune)
head(dune)

#Multivariate analysis
multivar <- decorana(dune)

dcal1 = 3.7004
dcal2 = 3.1166
dcal3 = 1.30055
dcal4 = 1.47888

total = dcal1 + dcal2 + dcal3 + dcal4
#or:
total <- sum(c(dacl1, dcal2, dcal3, dcal4))

percdcal1 = dcal1 * 100 / total
percdcal2 = dcal2 * 100 / total

percdcal1 + percdcal2 

plot(multivar)

#Principal component anaylisis
multipca <- pca(dune)
plot(multipca)
