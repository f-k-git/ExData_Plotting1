png("plot2.png", width = 480 , height = 480)
plot(datetime,as.numeric(data$Global_active_power),xlab = "", ylab = "Global Active Power (kilowatts)",type = "l")
dev.off()
