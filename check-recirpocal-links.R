setwd("/media/rishabh/VIRUS-INFECTED/WORK/RESEARCH/DataSet1")
library(data.table)
mydata <- read.table("douban_12209_35871.txt", header = FALSE)

j <- 1
i <- 1
#print(nrow(mydata))
x <- data.table()

count <- 1
while (i < nrow(mydata)){
  j <- i+1
  #print("IN WHILE")
  #print(i)
  #print(mydata[i, 1])
  left_col = mydata[i,1]
  right_col = mydata[i,2]
  while(j < nrow(mydata)){
    if(left_col == mydata[j, 2]){
      if(mydata[j,1] == right_col){
        print("====================================")
        print("NUMBER IS ")
        print(mydata[i,1])
        print("INDEX IS ")
        print(i)
        print("2nd INDEX IS")
        print(j)
        print("++++++++++++++++++++++++++++++++++++")
      }
    }
      j<-j+1
  }
  print(mydata[i, 2])
  i<-i+1
}