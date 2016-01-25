data = read.csv("household_power_consumption.txt", sep=";",  stringsAsFactors=FALSE)

sub = data[data$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(sub$Date, sub$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

filename = "plot2.png"

png(filename, width=480, height=480 )
plot( datetime, as.numeric(sub$Global_active_power), type="l", ylab = "Global Active Power (kilowatts)", xlab="" )
dev.off()