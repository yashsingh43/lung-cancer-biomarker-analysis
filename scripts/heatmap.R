set working directory

data <- read.csv("SCLCheatmap.csv", header = TRUE)

Data2 <- data[,-1]; row.names(Data2) <- data[,1]

heatmap(as.matrix(Data2), col=heat.colors(3))

legend(x="right", legend=c("min", "med", "max"),fill=heat.colors(3))

heatmap(as.matrix(Data2), xlab = "Samples", ylab = "Genes")
> legend(x="topleft", legend=c("max", "med", "min"),fill=heat.colors(3))