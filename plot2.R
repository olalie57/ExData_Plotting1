###############################################
## Exploratory Data Analysis Course Project 1 #
## plot2.R creates plot2.png                  #
## July 12th 2015, Ola Lie                    #
###############################################

## Load data
source("init.R")

cat("Launch png device...\n")
png(filename = "plot2.png", bg = "transparent",
    width = 480, height = 480, units = "px")

cat("Create plot...\n")
plot(df$dateTime,df$Global_active_power,
     type="l",
     main="",
     ylab="Global Active Power (kilowatts)",
     xlab="",
     col="black")

cat("Close device...\n") 
dev.off() 