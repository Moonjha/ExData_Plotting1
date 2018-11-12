install.packages("data.table")
library("data.table")
POWER_DATA <- fread("household_power_consumption.txt")
POWER_SUBSET <- POWER_DATA[POWER_DATA$Date %in% c("1/2/2007","2/2/2007") ,]
DT <- strptime(paste(POWER_SUBSET$Date, POWER_SUBSET$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
GLOBAL_ACTIVE_POWER <- as.numeric(POWER_SUBSET$Global_active_power)
png("plot2.png", width=480, height=480)
plot(DT, GLOBAL_ACTIVE_POWER, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
