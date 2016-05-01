ExDataWk1File <- "household_power_consumption.txt"
ExDataWk1 <- read.table(ExDataWk1File, header=TRUE, sep=";", 
                        stringsAsFactors=FALSE, dec=".")
subSetExDataWk1 <- ExDataWk1[ExDataWk1$Date %in% c("1/2/2007","2/2/2007") ,]


datetime <- strptime(paste(subSetExDataWk1$Date, subSetExDataWk1$Time, 
                           sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subSetExDataWk1$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime,globalActivePower, type="l", xlab="",
     ylab="Global Active Power (kilowatts)")
dev.off()