
#FIRST run 1_Reading_Data.R 

#create the plot
png("plot2.png",width = 480, height=480)
plot(datasub$date_time,datasub$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")

dev.off()