##data read
setwd("D:/Coursera/EDA")
data_file <- "household_power_consumption.txt"
real.data <- read.table(paste(getwd(),data_file,sep="/"), header = TRUE,
                        sep = ";", na.strings = "?", stringsAsFactors = FALSE)

##subsetting
data <- real.data[real.data$Date=='1/2/2007' | real.data$Date=='2/2/2007',]
attach(data)

##plot1
hist(Global_active_power,col=2,main='Global Active power',xlab='Global active power (kilowatts)')
dev.copy(png, file='plot1.png')
dev.off()