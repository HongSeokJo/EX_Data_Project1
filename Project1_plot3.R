##data read
setwd("D:/Coursera/EDA")
data_file <- "household_power_consumption.txt"
real.data <- read.table(paste(getwd(),data_file,sep="/"), header = TRUE,
                        sep = ";", na.strings = "?", stringsAsFactors = FALSE)

##subsetting
data <- real.data[real.data$Date=='1/2/2007' | real.data$Date=='2/2/2007',]
attach(data)

plot(Sub_metering_1,type='l',col='1',xlab='',ylab='Energe Sub Metering',xaxt="n")
points(Sub_metering_2,type='l',col='2')
points(Sub_metering_3,type='l',col='4')
axis(1,c(1,1441,2880),c("Thu","Fri","Sat"))
legend("topright",legend=c("Sub_mettering 1","Sub_mettering 2","Sub_mettering 3")
       ,col=c(1,2,4),lwd=rep(0,3))
