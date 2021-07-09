##add pll henotype
pheno<-read.csv('pheno_luo.csv')
dogfam<-read.table('dogs.fam')
for (i in 1:dim(dogfam)[1]){
  for (j in 1:dim(pheno)[1]){
    if (dogfam[i,1]==pheno[j,2]){
      for (k in 3:dim(pheno)[2]){
        dogfam[i,3+k]<-pheno[j,k]
      }
    }
  }
}
write.table(dogfam,'dogs_pheno.fam',quote = F,row.names = F,col.names = F)

