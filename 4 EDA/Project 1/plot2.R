setwd('d:/Oleh/Coursera/Data Science/4 EDA/Project 1')

library(dplyr)

rm(list = ls())

filename <- dir()[1]

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
png(file = 'plot2.png', width = 480, height = 480)

# Number of graphs on the screen
par(mfrow = c(1, 1))

plot(data$Global_active_power ~ data$DateTime, type = 'l',
     xlab = '',
     ylab = 'Global Active Power (kilowatts)')

# Closing png device
dev.off()
