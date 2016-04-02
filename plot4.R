household_data <- read.csv("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")

date <- as.character(household_data$Date)
d <- household_data[date=="1/2/2007" | date=="2/2/2007", ]


png(filename = "plot4.png")

par(mfrow=c(2,2))

#plot 1
plot(GAC, type="l", ylab ="Global Active Power", xlab=" ",xaxt = "n")
axis(1, at=c(1,1441,2881), labels=c("Thu", "Fri", "Sat") )

#plot 2
plot(d$Voltage, type="l", ylab ="Voltage", xlab="datetime",xaxt = "n")
axis(1, at=c(1,1441,2881), labels=c("Thu", "Fri", "Sat") )

#plot 3
with(d, plot(Sub_metering_1, type="l", xlab=" ",xaxt = "n", ylab="Energy sub metering") )
with(d, lines(Sub_metering_2, type="l", xlab=" ",xaxt = "n", col="red") )
with(d, lines(Sub_metering_3, type="l", xlab=" ",xaxt = "n", col="blue") )
axis(1, at=c(1,1441,2881), labels=c("Thu", "Fri", "Sat") )
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=c("black","red","blue"),lwd=2, bty="n")

#plot 4
plot(d$Global_reactive_power, type="l", ylab ="Global_reactive_power", xlab="datetime",xaxt = "n")
axis(1, at=c(1,1441,2881), labels=c("Thu", "Fri", "Sat") )

dev.off()