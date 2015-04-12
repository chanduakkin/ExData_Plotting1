DF<-data.frame(read.table("household_power_consumption.txt", sep=";", header = T, stringsAsFactors = F, na.strings = "?"))
DF2<-DF[as.Date(DT$Date, format="%d/%m/%Y") %between% c("2007-02-01", "2007-02-02"), ]

bitmap("plot3.png", height = 480, width = 480, units = 'px', type="png256")
plot(strptime(paste(DF2$Date," ",DF2$Time),"%d/%m/%Y %H:%M:%S"),DF2$Sub_metering_1, type="o", pch=".", ylab="Energy Sub Metering", xlab = "")
lines(strptime(paste(DF2$Date," ",DF2$Time),"%d/%m/%Y %H:%M:%S"),DF2$Sub_metering_2, type="o", pch=".", col="red")
lines(strptime(paste(DF2$Date," ",DF2$Time),"%d/%m/%Y %H:%M:%S"),DF2$Sub_metering_3, type="o", pch=".", col="blue")
legend("topright", legend =c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty=c(1,1,1), col=c("black","red","blue"), bty="n")
dev.off()