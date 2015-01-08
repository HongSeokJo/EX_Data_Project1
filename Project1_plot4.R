##data read
setwd("D:/Coursera/EDA")
data_file <- "household_power_consumption.txt"
real.data <- read.table(paste(getwd(),data_file,sep="/"), header = TRUE,
                        sep = ";", na.strings = "?", stringsAsFactors = FALSE)

##subsetting
data <- subset(real.data,Date == "1/2/2007" | Date == "2/2/2007")
date_time <- paste(data$Date,data$Time)
data$Date <- NULL 
data$Time <- NULL 
data$DateTime <- strptime(date_time,"%d/%m/%Y %H:%M:%S")
attach(data)
par(mfrow = c(2,2), mar = c(4,4,2,1), oma= c(0,0,2,0))

plot(Global_active_power,type='l',ylab='Global_active_power (kilowatts)',xlab=" ",xaxt="n")
axis(1,c(1,1441,2880),c("Thu","Fri","Sat"))

plot(Voltage,type='l',xlab='Date time',ylab='Voltage',xaxt="n")
axis(1,c(1,1441,2880),c("Thu","Fri","Sat"))

plot(Sub_metering_1,type='l',col='1',xlab='',ylab='Energe Sub Metering',xaxt="n")
points(Sub_metering_2,type='l',col='2')
points(Sub_metering_3,type='l',col='4')
axis(1,c(1,1441,2880),c("Thu","Fri","Sat"))
legend("topright",legend=c("Sub_mettering 1","Sub_mettering 2","Sub_mettering 3")
       ,col=c(1,2,4),lwd=rep(0,3))


plot(Global_reactive_power,type='l',col='1',xlab='Datetime',ylab='Global Reactive Power',xaxt="n")
axis(1,c(1,1441,2880),c("Thu","Fri","Sat"))
dev.copy(png, file='plot4.png')
dev.off()

