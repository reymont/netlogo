library(data.table)
library(igraph)
setwd("/media/rishabh/VIRUS-INFECTED2/WORK/RESEARCH/DataSet1")
mydata <- read.table("sina_10608_71272.txt", header = FALSE)
dataFrame <- graph.data.frame(rbind(mydata))
print(dataFrame)

plot(degree.distribution(dataFrame, mode="out"), log="xy")