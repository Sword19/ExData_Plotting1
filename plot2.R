my_plot = read.table("Subset_pc.txt",sep=";")
g2a <- my_plot$Global_active_power
g2b <- my_plot$Date_time
g3b <- as.POSIXlt(g2b)
plot(x = g3b,y =g2a,type="l",xlab="days",ylab="Global Active Power (kilowatts)")
