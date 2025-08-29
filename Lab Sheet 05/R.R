setwd("C:\\Users\\it24100860\\Desktop\\IT24100860")

#1
delivery_data <- read.table("Exercise - Lab 05.txt",header = TRUE)
names(delivery_data)<-c("Delivery_Time")
attach(delivery_data)

#2
histogram <- hist(Delivery_Time,
                  main="Histrogram of Delivery Times",
                  xlab="Delivery Time(minutes)",
                  ylab="Frequency",
                  breaks = seq(20,70,length.out=10))

#4
cum_freq<-cumsum(histogram$counts)
breaks<-histogram$breaks
ogive_y<-c(0,cum_freq)

plot(breaks,ogive_y,
     type="o",
     main="Cumulative Frequency Polygon(Ogive) ",
     xlab="Delivery Time(minutes)",
     ylab="Cumulative Frequency")