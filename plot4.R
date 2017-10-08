
#FIRST run 1_Reading_Data.R 

#create the plot 4
png("plot4.png",width = 480, height=480)

par(mfrow=c(2,2))

#plot1
plot(datasub$date_time,datasub$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")

#plot2
plot(datasub$date_time,datasub$Voltage, type="l", xlab="datetime", ylab="Voltage")

#plot3
plot(datasub$date_time,datasub$Sub_metering_1, type="l", xlab="", ylab = "Energy sub metering")
lines(datasub$date_time,datasub$Sub_metering_2, col="red")
lines(datasub$date_time,datasub$Sub_metering_3, col="blue")
legend("topright", bty = "n", col=c("black","red","blue"), lwd=c(1,1,1), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

#plot4
plot(datasub$date_time,datasub$Global_reactive_power, type="l", xlab="datetime",ylab="Global_reactive_power")

dev.off()