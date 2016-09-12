# ExData_Plotting1 
# Plot 2

# Assumes that data file household_power_consumption_small.txt is located in the directory where the script is executed from.
# household_power_consumption_small.txt is the reduced set from household_power_consumption.txt that only includes 2007-02-01 and 2007-02-02 
data <- read.delim('household_power_consumption_small.txt',sep = ";")

# Format the date
data$Date <- as.Date(data$Date,"%d/%m/%Y")

# Format the time
strptime(data$Time,format="%H:%M:%S")

# Start the graph
png("plot2.png",480,480)

# Add the values
plot(data$Global_active_power,
     main="",
     ylab="Globale Active Power (kilowatts)",
     xlab="",
     type="l",
     xaxt='n')

# Add the axis
axis(1,c(0,nrow(data)/2,nrow(data)),c("Thu","Fri","Sat"))

# Finish
dev.off()
