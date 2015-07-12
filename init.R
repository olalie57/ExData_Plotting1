###############################################
## Exploratory Data Analysis Course Project 1 #
## init.R downloads, unzips, and loads data   #
## for the two specified days. Then,          #
## a dateTime variable is created from the    #
## Date and Time variables.                   #
## July 12th 2015, Ola Lie                    #
###############################################

## Remember to set your working directory
## setwd("C:\\Users\\olalie\\Documents\\DataScience\\4_ExploratoryDataAnalysis\\COURSE_PROJECTS\\CourseProject1")

## Get the raw data:
if(!file.exists("./exdata-data-household_power_consumption.zip")){
    
    cat("Download files... (you might need to add argument: method = \"curl\"")
    download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",
                  destfile = "./exdata-data-household_power_consumption.zip")
    
    cat('Unzip files...\n')
    unzip("exdata-data-household_power_consumption.zip")
}

## Read data into R
cat('Loading data ...\n')

## Read header
header <- read.table("household_power_consumption.txt", header=FALSE, sep = ";",
                 nrows=1,colClasses="character")

## Read the two days and apply the column names
df <- read.table("household_power_consumption.txt",
                 header=FALSE, sep = ";", na.strings = "?",
                 col.names=header[1,], skip=66637, nrows = 2880,
                 colClasses = c(rep("factor",2), rep("numeric", 7)))


## Create dateTime column
df$dateTime = strptime(paste(df$Date, df$Time), format="%d/%m/%Y %H:%M:%S")
Sys.setlocale("LC_TIME", "C") ## weekdays in English in stead of Norwegian
