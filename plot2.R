household_data <- read.csv("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")

date <- as.character(household_data$Date)
d <- household_data[date=="1/2/2007" | date=="2/2/2007", ]

GAC <- d$Global_active_power

png(filename = "plot2.png")
plot(GAC, type="l", ylab ="Global Active Power (kilowatts)", xlab=" ",xaxt = "n")
axis(1, at=c(1,1441,2881), labels=c("Thu", "Fri", "Sat") )
dev.off()