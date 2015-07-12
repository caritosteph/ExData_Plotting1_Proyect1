# Load data
source('scripts/loadDataHomePower.R')

# Open png device
png(filename='plots/plot1.png')

# Make plot
# household global minute-averaged active power (in kilowatt)
hist(homePower.df$Global_active_power, main='Global_active_power', 
     xlab='Global_active_power (kilowatts)', col='red')

# Turn off device
dev.off()