DF<-data.frame(read.table("household_power_consumption.txt", sep=";", header = T, stringsAsFactors = F, na.strings = "?"))
DF2<-DF[as.Date(DT$Date, format="%d/%m/%Y") %between% c("2007-02-01", "2007-02-02"), ]

bitmap("plot1.png", height = 480, width = 480, units = 'px', type="png256")
hist(DF2$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", ylab="Frequency", main="Global Active Power")
dev.off()