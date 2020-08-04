### downloading zip file

url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
path <- getwd()
download.file(url,file.path(path,"data.zip"),method = "curl")
unzip("data.zip")

### loading data
data <- data.table::fread("household_power_consumption.txt")

### summary(data)

### extracting the required data
dt1 <- subset(data,Date == "1/02/2007")
dt1 <- subset(data,Date == "2/02/2007")

### combining the required data
data <- rbind(dt1,dt2,use.names = FALSE)

### combining data$Date and data$Time and converting it from character to date type
datetime <- strptime(paste(data$Date,data$Time),"%d/%m/%Y %H:%M:%S")
