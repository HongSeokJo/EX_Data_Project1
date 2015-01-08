##data read
setwd("D:/Coursera/EDA")
data_file <- "household_power_consumption.txt"
real.data <- read.table(paste(getwd(),data_file,sep="/"), header = TRUE,
                        sep = ";", na.strings = "?", stringsAsFactors = FALSE)

##subsetting
data <- real.data[real.data$Date=='1/2/2007' | real.data$Date=='2/2/2007',]
attach(data)

data[data$Date=='1/2/2007' & data$Time=='23:59:00',]
plot(Global_active_power,type='l',ylab='Global_active_power (kilowatts)',xlab=" ",xaxt="n")
axis(1,c(1,1441,2880),c("Thu","Fri","Sat"))
