#subset family id,individual id and phenotype
dogfam<-read.table('dogs_qc.fam')
earbend<-dogfam[,c(1,2,19)]
eartip<-dogfam[,c(1,2,37)]
tailcurve<-dogfam[,c(1,2,21)]
eyeshape<-dogfam[,c(1,2,36)]
life<-dogfam[,c(1,2,14)]
write.table(earbend,'./earbend.txt',quote = F,row.names = F,col.names = F)
write.table(eartip,'./eartip.txt',quote = F,row.names = F,col.names = F)
write.table(tailcurve,'./tailcurve.txt',quote = F,row.names = F,col.names = F)
write.table(eyeshape,'./eyeshape.txt',quote = F,row.names = F,col.names = F)
write.table(life,'./life.txt',quote = F,row.names = F,col.names = F)