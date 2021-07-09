dogfam<-read.table('/picb/bigdata/project/dogs/0_data/dogs.fam')
breed<-read.table('/picb/bigdata/project/dogs/0_data/readme')
fam<-data.frame(a=character(0),b=character(0))
for (i in 1:dim(dogfam)[1]){
+ if (dogfam[i,1] %in% breed[,1]){
+ fam[i,1]<-dogfam[i,1];fam[i,2]<-dogfam[i,2]}
+ }
newfam<-na.omit(fam)
write.table(newfam,'breed_del.txt',quote=F,row.names=F,col.names=F)


