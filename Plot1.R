ExDataWk1File <- "household_power_consumption.txt"
ExDataWk1 <- read.table(ExDataWk1File, header=TRUE, sep=";", 
                        stringsAsFactors=FALSE, dec=".")
subSetExDataWk1 <- ExDataWk1[ExDataWk1$Date %in% c("1/2/2007","2/2/2007") ,]

globalActivePower <- as.numeric(subSetExDataWk1$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active power", 
     xlab= "Global Active Power (kilowatts)", cex=1, cex.axis=0.75, 
     cex.lab=0.75, cex.main=.9)
dev.off()
