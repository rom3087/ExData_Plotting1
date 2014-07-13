## R script to read data from household_power_consumption.txt and create first plot

setwd("C:\\Users\\Marku_000\\Documents\\MOOCS\\John Hopkins\\Exploratory Data Analysis\\project1\\ExData_Plotting1")
power_consumption <- read.table("..\\household_power_consumption.txt", header = TRUE, sep=";", dec = ".", na.strings="?")
power_consumption$Date = as.Date(power_consumption$Date,"%d/%m/%Y")
power_consumption <- subset(power_consumption, Date >= "2007-02-01" & Date <= "2007-02-02")
png(filename = "Plot3.png", width = 480, height = 480)
plot(power_consumption$Sub_metering_1, type="l", pch=".", xaxt="n", xlab=NA, ylab="Sub Metering Energy")
lines(power_consumption$Sub_metering_2, col="red")
lines(power_consumption$Sub_metering_3, col="blue")
axis(side=1,at=c(1,1440,2880),labels=c("Thu","Fri","Sat"))
legend("topright",  lty=1, , col = c("black","red","blue"), legend=c("Sub_Metering_1", "Sub_Metering_2", "Sub_Metering_3"))
dev.off()
