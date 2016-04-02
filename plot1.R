household_data <- read.csv("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")

date <- as.character(household_data$Date)
d <- household_data[date=="1/2/2007" | date=="2/2/2007", ]

GAC <- d$Global_active_power

png(filename = "plot1.png")
hist(GAC, main="Global Active Power", xlab ="Global Active Power (kilowatts)", col = "red")
dev.off()