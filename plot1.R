###############################################
## Exploratory Data Analysis Course Project 1 #
## plot1.R creates plot1.png                  #
## July 12th 2015, Ola Lie                    #
###############################################

## Load data
source("init.R")

cat("Launch png device...\n")
png(filename = "plot1.png", bg = "transparent",
    width = 480, height = 480, units = "px")

cat("Create histogram...\n")
hist(df$Global_active_power,
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)",
     col="orangered")

cat("Close device...\n") 
dev.off() 