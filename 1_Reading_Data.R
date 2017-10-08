#create a directory
if(!file.exists("data")){dir.create("data")}

#download the file
if(!file.exists("./household_power_consumption")){
        download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",
                      destfile = "./data.hpc.zip")
}

#unzip the file
if(!file.exists("./household_power_consumption")){
        unzip("./data.hpc.zip", exdir = "./data")
}

#read a subset of the file into R
install.packages("sqldf")
library(sqldf)
datasub<-read.csv.sql("./data/household_power_consumption.txt",sep = ";", sql = "select * from file where Date = '1/2/2007' or Date='2/2/2007'")

install.packages("lubridate")
library(lubridate)

#create a new column with date and time and change its class
datasub<-mutate(datasub,date_time=paste(datasub$Date,datasub$Time,sep = " "))
datasub<- mutate(datasub,date_time=dmy_hms(datasub$date_time))