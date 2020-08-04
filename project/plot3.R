png("plot3.png",width = 480 ,height = 480)

### setting up the space for the graph

plot(datetime,as.numeric(data$Sub_metering_1),"n" ,xlab = "", ylab = "Energy sub metering")

### plotting the lines one at a time

points(datetime,as.numeric(data$Sub_metering_1),type = "l")
points(datetime,as.numeric(data$Sub_metering_2),type = "l", col = "red")
points(datetime,as.numeric(data$Sub_metering_3),type = "l", col = "blue")
legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col = c("black","red","blue"),lwd = c(1,1,1) , lty = c(1,1,1))
dev.off()
