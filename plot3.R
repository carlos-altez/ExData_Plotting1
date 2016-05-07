archivo<-"./lala.txt"
data <- read.table(archivo, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
datasubset<-data[data$Date %in% c("1/2/2007","2/2/2007"),]
grp<- as.numeric(datasubset$Global_active_power)
sm1<-as.numeric(datasubset$Sub_metering_1)
sm2<-as.numeric(datasubset$Sub_metering_2)

sm3<-as.numeric(datasubset$Sub_metering_3)

datetime <- strptime(paste(datasubset$Date, datasubset$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png("plot3.png", width=480, height=480)
plot(datetime,sm1, type="n", xlab="", ylab="Energy submettering")
lines(datetime,sm1,col="black")
lines(datetime,sm2,col="red")
lines(datetime,sm3,col="blue")
legend("topright",lty=1,col=c("black","red","blue"),legend = c("sub_metering_1","sub_metering_2","sub_metering_3"))

dev.off()