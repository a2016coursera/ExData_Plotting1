# ExData_Plotting1 
# Plot 1

# Assumes that data file household_power_consumption_small.txt is located in the directory where the script is executed from.
# household_power_consumption_small.txt is the reduced set from household_power_consumption.txt that only includes 2007-02-01 and 2007-02-02 
data <- read.delim('household_power_consumption_small.txt',sep = ";")

# Format the date
data$Date <- as.Date(data$Date,"%d/%m/%Y")

# Format the time
strptime(data$Time,format="%H:%M:%S")

# Start the graph
png("plot1.png",480,480)

# Add the values
hist(data$Global_active_power,
     main="Global Active Power",
     col="red",
     xlab="Globale Active Power (kilowatts)",
     ylab="Frequency")

# Finish
dev.off()
