# ExData_Plotting1 
# Plot 4

# Assumes that data file household_power_consumption_small.txt is located in the directory where the script is executed from.
# household_power_consumption_small.txt is the reduced set from household_power_consumption.txt that only includes 2007-02-01 and 2007-02-02 
data <- read.delim('household_power_consumption_small.txt',sep = ";")

# Format the date
data$Date <- as.Date(data$Date,"%d/%m/%Y")

# Format the time
strptime(data$Time,format="%H:%M:%S")

# Start the graph
png("plot4.png",480,480)

# Partition the plot
par(mfrow=c(2,2))

## First plot
# Add the values
plot(data$Global_active_power,
     main="",
     ylab="Globale Active Power",
     xlab="",
     type="l",
     xaxt='n')

# Add the axis
axis(1,c(0,nrow(data)/2,nrow(data)),c("Thu","Fri","Sat"))

## Second plot
# Add the values
plot(data$Voltage,
     main="",
     ylab="Voltage",
     xlab="datetime",
     type="l",
     xaxt='n')

# Add the axis
axis(1,c(0,nrow(data)/2,nrow(data)),c("Thu","Fri","Sat"))

# Add the values
plot(data$Sub_metering_1,
     main="",
     ylab="Energy sub metering",
     xlab="",
     type="l",
     xaxt='n')

## Third plot
# Add the values
lines(data$Sub_metering_2,col="red")

# Add the values
lines(data$Sub_metering_3,col="blue")

# Add legend
legend("topright", lty=1, bty="n", 
       col=c("black", "red", "blue"), 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

# Add the axis
axis(1,c(0,nrow(data)/2,nrow(data)),c("Thu","Fri","Sat"))

## Fourth Plot
# Add the values
plot(data$Global_reactive_power,
     main="",
     ylab="Global_reactive_power",
     xlab="datetime",
     type="l",
     xaxt='n')

# Add the axis
axis(1,c(0,nrow(data)/2,nrow(data)),c("Thu","Fri","Sat"))


# Finish
dev.off()
