archivo<-"./lala.txt"
data <- read.table(archivo, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
datasubset<-data[data$Date %in% c("1/2/2007","2/2/2007"),]
grp<- as.numeric(datasubset$Global_active_power)

datetime <- strptime(paste(datasubset$Date, datasubset$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
plot(datetime, grp, type="l", xlab="", ylab="Global Active Power (kilowatt)")
dev.copy(png, "png2.png")
dev.off()

