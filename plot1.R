archivo<-"./lala.txt"
data <- read.table(archivo, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
datasubset<-data[data$Date %in% c("1/2/2007","2/2/2007"),]
grp<- as.numeric(datasubset$Global_active_power)
png("plot1.png", width=480, height=480)
hist(grp, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()