DF<-data.frame(read.table("household_power_consumption.txt", sep=";", header = T, stringsAsFactors = F, na.strings = "?"))
DF2<-DF[as.Date(DT$Date, format="%d/%m/%Y") %between% c("2007-02-01", "2007-02-02"), ]

bitmap("plot4.png", height = 480, width = 480, units = 'px', type="png256")
par(mfrow=c(2,2))
par(mar = c(5,4,4,2))
plot(strptime(paste(DF2$Date," ",DF2$Time),"%d/%m/%Y %H:%M:%S"),DF2$Global_active_power, type="o", pch=".",ylab="Global Active Power", xlab="", cex.lab=1.2, cex.axis=1.2,cex=1.2)
plot(strptime(paste(DF2$Date," ",DF2$Time),"%d/%m/%Y %H:%M:%S"),DF2$Voltage, type="o", pch=".", ylab="voltage", xlab = "datetime", cex.lab=1.2, cex.axis=1.2,cex=1.2)
plot(strptime(paste(DF2$Date," ",DF2$Time),"%d/%m/%Y %H:%M:%S"),DF2$Sub_metering_1, type="o", pch=".", ylab="Energy Sub Metering", xlab = "", cex.lab=1.2, cex.axis=1.2,cex=1.2)
lines(strptime(paste(DF2$Date," ",DF2$Time),"%d/%m/%Y %H:%M:%S"),DF2$Sub_metering_2, type="o", pch=".", col="red",cex=1.2)
lines(strptime(paste(DF2$Date," ",DF2$Time),"%d/%m/%Y %H:%M:%S"),DF2$Sub_metering_3, type="o", pch=".", col="blue",cex=1.2)
legend("topright", legend =c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty=c(1,1,1), col=c("black","red","blue"), bty="n",cex=1.2)
plot(strptime(paste(DF2$Date," ",DF2$Time),"%d/%m/%Y %H:%M:%S"),DF2$Global_reactive_power, type="o", pch=".",ylab="Global_reactive_power", xlab="datetime", cex.lab=1.2, cex.axis=1.2,cex=1.2)
dev.off()
