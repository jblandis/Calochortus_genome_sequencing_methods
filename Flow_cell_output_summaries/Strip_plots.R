#This script was written by Jacob B. Landis to look at the read distribution from different flow cells of Nanopore sequencing for several Calochortus species.
#The data is published in a special issues of APPS in the manuscript: Balancing read length and sequencing depth: optimizing Nanopore long-read sequencing for monocots with an emphasis on Liliales

#modifications that need to be made that were not necessary the first time around is to uncompress the bzip2 files and then combine part1 and part2 of Calochortus_amabilis_lib3_run1; these changes are due to uploading files to GitHub

library(Biostrings)

########################
# original plots
########################
mydata <- read.table("Calochortus_albus_flow_cell_reports.txt",header=FALSE)

#columns: 1 = flow cell; 2 = read length; 3 = GC content, 4 = avg quality

pdf(file="Read_length_Calo_albus.pdf",10,10)
stripchart(mydata$V2~mydata$V1, data=mydata, vertical=TRUE, main="Read length distribution Calochortus albus", ylab="Read length bp", group.names=c("flow cell 1", "flow cell 2","flow cell 3", "flow cell 4", "flow cell 5"), method="jitter",pch=16)
N50 <- tapply(mydata$V2, mydata$V1, N50)
points(N50, pch="-", cex=3, col="red")
dev.off()

png(file="Read_length_Calo_albus.png")
stripchart(mydata$V2~mydata$V1, data=mydata, vertical=TRUE, main="Read length distribution Calochortus albus", ylab="Read length bp", group.names=c("flow cell 1", "flow cell 2","flow cell 3", "flow cell 4", "flow cell 5"), method="jitter",pch=16)
N50 <- tapply(mydata$V2, mydata$V1, N50)
points(N50, pch="-", cex=3, col="red")
dev.off()


means <- tapply(mydata$V2, mydata$V1, mean)
N50 <- tapply(mydata$V2, mydata$V1, N50)
N50

pdf(file="Boxplot_Read_length_Calo_albus.pdf",10,5)
boxplot(mydata$V2~mydata$V1, data=mydata, vertical=TRUE, main="Read length distribution Calochortus albus", ylab="Read length bp", group.names=c("flow cell 1", "flow cell 2","flow cell 3", "flow cell 4", "flow cell 5"))
#medians <- tapply(mydata$V2, mydata$V1, median)
#points(medians, pch="-", cex=3, col="red")
dev.off()

