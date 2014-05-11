#Data is loaded from the Data Cleaning script
source('dataClean.R')


# Plotting!
png("plot1.png", height=480, width=480)

#Histogram
hist(data$Global_active_power, col='red', 
     xlab = 'Global Active Power (kilowatts)',
     main = 'Global Active Power')

dev.off() #Close png
