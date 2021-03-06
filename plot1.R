data = read.csv("household_power_consumption.txt", sep=";",  stringsAsFactors=FALSE)

sub = data[data$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(sub$Date, sub$Time, sep=" "), "%d/%m/%Y %H:%M:%S")


filename = "plot1.png"
png(filename, width=480, height=480 )
hist(
    as.numeric(sub$Global_active_power),
    col="red",
    xlab="Global Active Power (kilowatts)",
    main="Global Active Power"
)
dev.off()