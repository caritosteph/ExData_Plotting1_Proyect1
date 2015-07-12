# Load data
source('scripts/loadDataHomePower.R')

# Open png device
png(filename='plots/plot2.png')

# Make plot
# household global minute-averaged active power (in kilowatt)
plot(homePower.df$date.time, homePower.df$Global_active_power,
     ylab='Global_active_power (kilowatts)', xlab='', type='l')

# Turn off device
dev.off()