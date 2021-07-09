#R script-convert_format.R
result<-read.table('height.assoc.txt',header=T)
xx<-function(x){n<-4480-as.numeric(x[4])}
yy<-apply(result,1,xx)
result<-cbind(result,yy)
result<-result[,c(2,5,6,7,8,9,12,13)]
colnames(result)<-c('SNP','A1','A2','freq','b','se','p','N')
write.table(result,'height.raw',row.names = F,col.names = T,quote = F)