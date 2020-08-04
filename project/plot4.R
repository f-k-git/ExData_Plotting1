png('plot4.png', width = 480, height = 480)

### setting space for 4 graph
par(mfrow = c(2,2))

### graph 1

plot(datetime,as.numeric(data$Global_active_power),xlab = "", ylab = "Global Active Power",type = "l")

### graph 2

plot(datetime,as.numeric(data$Voltage),xlab = "datetime", ylab = "Voltage",type = "l")

### graph 3

plot(datetime,as.numeric(data$Sub_metering_1),"n" ,xlab = "", ylab = "Energy sub metering")
points(datetime,as.numeric(data$Sub_metering_1),type = "l")
points(datetime,as.numeric(data$Sub_metering_2),type = "l", col = "red")
points(datetime,as.numeric(data$Sub_metering_3),type = "l", col = "blue")

### bty = "n" mean body type none

legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col = c("black","red","blue"),lwd = c(1,1,1) , lty = c(1,1,1), bty = "n")

### graph 4

plot(datetime,as.numeric(data$Global_reactive_power),xlab = "datetime", ylab = "Global_reactive_power",type = "l")
dev.off()
