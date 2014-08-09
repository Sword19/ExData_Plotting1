my_plot = read.table("Subset_pc.txt",sep=";")
g3a <- my_plot$Sub_metering_1
g3c <- my_plot$Sub_metering_2
g3d <- my_plot$Sub_metering_3
g2b <- my_plot$Date_time
g3b <- as.POSIXlt(g2b)
plot(x=g3b,y= g3a,type="l",ylab="Energy sub metering",xlab="")
lines(x=g3b,y=g3c,col = "red")
lines(x=g3b,y=g3d,col = "blue")
legend(cex = 0.60,legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),"topright",lty = 1,col=c("black","red","blue"))

?legend
