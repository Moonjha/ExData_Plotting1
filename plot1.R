install.packages("data.table")
library("data.table")
POWER_DATA <- fread("household_power_consumption.txt")
POWER_SUBSET <- POWER_DATA[POWER_DATA$Date %in% c("1/2/2007","2/2/2007") ,]
GLOBAL_ACTIVE_POWER <- as.numeric(POWER_SUBSET$Global_active_power)
png("plot1.png", width=480, height=480)
hist(GLOBAL_ACTIVE_POWER , col="red", main="Global Active Power", 
     xlab="Global Active Power (kilowatts)")
dev.off()
