data = read.csv("household_power_consumption.txt", sep=";",  stringsAsFactors=FALSE)

sub = data[data$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(sub$Date, sub$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

filename = "plot4.png"

png(filename, width=480, height=480 )

par(mfrow=c(2,2))

plot( datetime, sub$Voltage, type="l", ylab="Voltage", xlab="datetime" );

plot( datetime, sub$Global_active_power, type="l", ylab="Global Activity Power", xlab="")

m1 = as.numeric(sub$Sub_metering_1)
m2 = as.numeric(sub$Sub_metering_2)
m3 = as.numeric(sub$Sub_metering_3)

plot( datetime, m1, type="l", ylab = "Energy sub metering", xlab="" )
lines( datetime, m2, type="l", ylab = "Energy sub metering", xlab="", col="red" )
lines( datetime, m3, type="l", ylab = "Energy sub metering", xlab="", col="blue" )
legend("topright", c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), col = c("black", "red","blue"), lty = 1, lwd=2.5)

plot( datetime, sub$Global_reactive_power, type="l", ylab="Global_rective_power", xlab="datetime")

dev.off()
