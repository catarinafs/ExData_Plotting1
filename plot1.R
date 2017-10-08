
#FIRST run 1_Reading_Data.R 

#create the plot
png("plot1.png",width = 480, height=480)

hist(datasub$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

dev.off()