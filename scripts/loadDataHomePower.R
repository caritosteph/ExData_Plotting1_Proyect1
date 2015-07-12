#Lubridate makes it easier to work with dates
#and times by providing functions to identify and parse
#date-time data
library(lubridate)

# Save it to an new file for easy access later.
if (!file.exists('houseHoldPower.rds')) {
    download.file(paste0('https://d396qusza40orc.cloudfront.net/',
                         'exdata%2Fdata%2Fhousehold_power_consumption.zip'),
                  method='curl', destfile='raw-power-data.zip')
    unzip('raw-power-data.zip')
    
    # Read data into a table
    homePower.df <- read.table('household_power_consumption.txt', header=TRUE,
                           sep=';', na.strings='?',
                           colClasses=c(rep('character', 2), 
                                        rep('numeric', 7)))
    
    # Convert dates and times
    homePower.df$Date <- dmy(homePower.df$Date)
    homePower.df$Time <- hms(homePower.df$Time)

    # Combine date and time
    homePower.df$date.time <-homePower.df$Date + homePower.df$Time
    
    # Save file
    saveRDS(homePower.df, file='houseHoldPower.rds.rds')
} else {
  homePower.df <- readRDS('houseHoldPower.rds')
}