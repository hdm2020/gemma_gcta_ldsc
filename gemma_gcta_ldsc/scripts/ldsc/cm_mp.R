# R script-cm_map.R
for (n in c(1:38)){
  xx<-read.table(paste0('mark4_cleaned_chr',n,'.cf3.1.sorted.txt'),header=F)
  xx<-xx[,-1]
  colnames(xx)<-c('pposition','rrate','gposition')
  write.table(xx,paste0('genetic_map_chr',n,'.txt'),row.names=F,col.names=T,quote=F)
}