my_plot = read.table("Subset_pc.txt",sep=";")

#1st plot variables
g2a <- my_plot$Global_active_power
g2b <- my_plot$Date_time
g3b <- as.POSIXlt(g2b)


g3a <- my_plot$Sub_metering_1
g3c <- my_plot$Sub_metering_2
g3d <- my_plot$Sub_metering_3
plot(x=g3b,y= g3a,type="l",ylab="Energy sub metering",xlab="")
lines(x=g3b,y=g3c,col = "red")
lines(x=g3b,y=g3d,col = "blue")
legend(cex = 0.60,legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),"topright",lty = 1,col=c("black","red","blue"))

h1a <- my_plot$Voltage


h1b <- my_plot$Global_reactive_power

#lets get to plotting

par(mar=c(4,4,2,2),mfcol =c(2,2))
plot(x = g3b,y =g2a,type="l",xlab="",ylab="Global Active Power")

plot(x=g3b,y= g3a,type="l",ylab="Energy sub metering",xlab="")
lines(x=g3b,y=g3c,col = "red")
lines(x=g3b,y=g3d,col = "blue")
legend(cex = 0.60,legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),"topright",lty = 1,col=c("black","red","blue"))

plot(x=g3b,y= h1a,type="l",ylab="Voltage",xlab="datetime")

plot(x=g3b,y= h1b,type="l",ylab="Global_reactive_power",xlab="datetime")

