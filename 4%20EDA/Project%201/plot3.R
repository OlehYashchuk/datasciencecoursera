library(dplyr)

rm(list = ls())

filename <- 'household_power_consumption.txt' #dir()[1]

# Identifing borders of needed rows
start <- grep("^1.2.2007*", readLines(filename))[1] - 1
finish <- grep("^3.2.2007*", readLines(filename))[1] - 1
colrows <- finish - start

# Loading needed rows
data <- read.table(filename, sep = ';', dec = '.', 
                   header = FALSE, na.strings = "?",
                   colClasses = c('factor', 'factor', rep('numeric', 7)),
                   comment.char = '',
                   skip = start,
                   nrows = colrows)

head(data)
tail(data)

# Loading variables names
headers <- read.table(filename, sep = ';', dec = '.', header = TRUE, 
                      na.strings = "?", nrows = 1)

# Setting variables names
colnames(data) <- colnames(headers)

# Adding a date column
data$DateTime <- strptime(paste(data$Date, data$Time), '%d/%m/%Y %H:%M:%S')
data$DateTime <- as.POSIXct(data$DateTime)

# Plot 2

# Opening png device
png(file = 'plot3.png', width = 480, height = 480)

# Number of graphs on the screen
par(mfrow = c(1, 1), bg = NA)

plot(data$Sub_metering_1 ~ data$DateTime, type = 'l',
     xlab = '',
     ylab = 'Energy sub metering')

lines(data$Sub_metering_2 ~ data$DateTime, type = 'l',
      col = 'red', xlab = '', ylab = '')

lines(data$Sub_metering_3 ~ data$DateTime, type = 'l',
      col = 'blue', xlab = '', ylab = '')

legend('topright', 
       legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
       col = c('black', 'red', 'blue'), lty = rep(1, 3))

# Closing png device
dev.off()
