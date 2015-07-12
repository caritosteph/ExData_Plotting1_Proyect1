# Load data
source('scripts/loadDataHomePower.R')

# Open png device
png(filename='plots/plot3.png')

# Make plot
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
       lty='solid')

# Turn off device
dev.off()