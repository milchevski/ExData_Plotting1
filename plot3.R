household_data <- read.csv("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")

date <- as.character(household_data$Date)
d <- household_data[date=="1/2/2007" | date=="2/2/2007", ]

png(filename = "plot3.png")
with(d, plot(Sub_metering_1, type="l", xlab=" ",xaxt = "n", ylab="Energy sub metering") )
with(d, lines(Sub_metering_2, type="l", xlab=" ",xaxt = "n", col="red") )
with(d, lines(Sub_metering_3, type="l", xlab=" ",xaxt = "n", col="blue") )

axis(1, at=c(1,1441,2881), labels=c("Thu", "Fri", "Sat") )
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=c("black","red","blue"),lwd=2)
dev.off()