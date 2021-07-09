# R script-build chromn.ma file
result<-read.table('earbend.assoc.txt',header=T)
n<-3903-as.numeric(result[,4])
full_ma<-cbind(result,n)
full_ma<-full_ma[,c(2,5,6,7,8,9,12,13)]
write.table(full_ma,'earbend.ma',row.names = F,col.names = T,quote = F)