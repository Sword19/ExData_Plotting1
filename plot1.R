my_plot = read.table("Subset_pc.txt",sep=";")
g1 <- my_plot$Global_active_power
hist(g1,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
