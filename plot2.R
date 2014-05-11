#Data is loaded from the Data Cleaning script
source('dataClean.R')

# create a png file
png("plot2.png", height=480, width=480)

plot(data$DateTime, 
     data$Global_active_power, 
     pch=NA, 
     xlab="", 
     ylab="Global Active Power (kilowatts)") #plot
lines(data$DateTime, data$Global_active_power) #graph

dev.off() # close png
