#-------------Read from text file
#-------------Create Dataframe
data <- read.table('household_power_consumption.txt', sep=';', header=T, 
                   colClasses = c('character', 'character', 'numeric',
                                  'numeric', 'numeric', 'numeric',
                                  'numeric', 'numeric', 'numeric'),
                   na.strings='?')
#str(data)
#summary(data)

#------------Subset to get only the required observations 
data <- subset(data,(
  as.Date(Date,format="%d/%m/%Y") >= as.Date("2007-02-01") &
    as.Date(Date,format="%d/%m/%Y") <= as.Date("2007-02-02")
))
#table(data$Date)

#-------------Converting to standard date format
data$Date <- as.Date(data$Date,format="%d/%m/%Y")

#-------------Timestamp creation
data$DateTime <- strptime(paste(data$Date, data$Time),"%Y-%m-%d %H:%M:%S")
#str(data)
