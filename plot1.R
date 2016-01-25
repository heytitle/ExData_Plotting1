data = read.csv("household_power_consumption.txt", sep=";")
data$Date = as.Date(strptime( data$Date , "%d/%m/%Y" ))


filename = "plot1"
sub = subset( data, Date >= "2007-02-01" & Date <= "2007-02-02" )
hist(
    2*(as.numeric(sub$Global_active_power)/1000 ),
    col="red",
    xlab="Global Active Power (kilowatts)",
    main="Global Active Power"
)