setwd("./coursera/exploratory-data-analysis/")
<<<<<<< HEAD
data <- read.csv("household_power_consumption.txt",header = TRUE,sep = ";",na.strings = "?")
data$Date <- as.Date(data$Date,format="%d/%m/%Y")
data <- subset(data,subset = (Date>="2007-02-01" & Date <= "2007-02-02"))
Time <- paste(as.Date(data$Date),data$Time)
data$Time <- as.POSIXct(Time)
=======

data <- read.csv("household_power_consumption.txt",header = TRUE,sep = ";",na.strings = "?")
data$Date <- as.Date(data$Date,format="%d/%m/%Y")
data <- subset(data,subset = (Date>="2007-02-01" & Date <= "2007-02-02"))

Time <- paste(as.Date(data$Date),data$Time)
data$Time <- as.POSIXct(Time)

>>>>>>> ee68ae4f170340db131a87ea7938bc3fbae11970
hist(data$Global_active_power,main = "Global Active Power",xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

dev.copy(png,file="plot1.png",height=480,width=480)
dev.off()
