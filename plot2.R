## R script to read data from household_power_consumption.txt and create first plot

setwd("C:\\Users\\Marku_000\\Documents\\MOOCS\\John Hopkins\\Exploratory Data Analysis\\project1\\ExData_Plotting1")
power_consumption <- read.table("..\\household_power_consumption.txt", header = TRUE, sep=";", dec = ".", na.strings="?")
power_consumption$Date = as.Date(power_consumption$Date,"%d/%m/%Y")
power_consumption <- subset(power_consumption, Date >= "2007-02-01" & Date <= "2007-02-02")
png(filename = "Plot2.png", width = 480, height = 480)
plot(power_consumption$Global_active_power, pch=".", xaxt="n", xlab=NA, ylab="Global Active Power (kilowatts)")
lines(power_consumption$Global_active_power, xaxt="n", ylab="Global Active Power (kilowatts)")
axis(side=1,at=c(1,1440,2880),labels=c("Thu","Fri","Sat"))
dev.off()
