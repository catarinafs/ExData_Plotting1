
#FIRST run 1_Reading_Data.R 

#create the plot 3

png("plot3.png",width = 480, height=480)

plot(datasub$date_time,datasub$Sub_metering_1, type="l", xlab="", ylab = "Energy sub metering")
lines(datasub$date_time,datasub$Sub_metering_2, col="red")
lines(datasub$date_time,datasub$Sub_metering_3, col="blue")
legend("topright", col=c("black","red","blue"), lwd=c(1,1,1), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

dev.off()