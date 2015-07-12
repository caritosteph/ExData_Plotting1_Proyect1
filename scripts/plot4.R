# Load data
source('scripts/loadDataHomePower.R')

# Open device
png(filename='plots/plot4.png')

## Make plots
par(mfrow=c(2,2))

# Top left
plot(homePower.df$date.time, homePower.df$Global_active_power,
     ylab='Global Active Power', xlab='', type='l')

# Top right
plot(homePower.df$date.time, homePower.df$Voltage,
     xlab='datetime', ylab='Voltage', type='l')

# Bottom left
plot(homePower.df$date.time, homePower.df$Sub_metering_1, type='l',
     xlab='', ylab='Energy sub metering')
lines(homePower.df$date.time, homePower.df$Sub_metering_2, col='red')
lines(homePower.df$date.time, homePower.df$Sub_metering_3, col='blue')
# energy sub-metering No. 1 (in watt-hour of active energy).
# It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered).
# energy sub-metering No. 2 (in watt-hour of active energy).
# It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light.
# energy sub-metering No. 3 (in watt-hour of active energy).
# It corresponds to an electric water-heater and an air-conditioner.
legend('topright', 
       legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
       col=c('black', 'red', 'blue'), 
       lty='solid', bty='n')

# Bottom right
# household global minute-averaged reactive power (in kilowatt)
plot(homePower.df$date.time,homePower.df$Global_reactive_power,
     xlab='datetime', ylab='Global_reactive_power', type='l')

# Turn off device
dev.off()