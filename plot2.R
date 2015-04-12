DF<-data.frame(read.table("household_power_consumption.txt", sep=";", header = T, stringsAsFactors = F, na.strings = "?"))
DF2<-DF[as.Date(DT$Date, format="%d/%m/%Y") %between% c("2007-02-01", "2007-02-02"), ]

bitmap("plot2.png", height = 480, width = 480, units = 'px', type="png256")
plot(strptime(paste(DF2$Date," ",DF2$Time),"%d/%m/%Y %H:%M:%S"),DF2$Global_active_power, type="o", pch=".",ylab="Global Active Power (kilowatts)", xlab="" )
dev.off()