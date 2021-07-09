#R script- manhatan.R
library(qqman)
setwd('F:/hdm_0420')
manhattan_dog<-function(filename,picturename){
  gwasresults<-read.table(paste0(filename,'.txt'),header = T)
  pdf(paste0(picturename,".pdf"))
  n<-dim(gwasresults)[1]
  p0<-0.05/n
  manhattan(gwasresults,chr = "chr", bp = "ps", p = "p_wald", snp = "rs",main = paste0("Manhattan Plot: ",picturename),chrlabs=as.character(c(1:39)),xlab='chromosome',cex = 0.6, cex.axis = 0.5,col = c("blue4", "orange3"),suggestiveline = F, genomewideline = -log10(p0))
  dev.off()
  pdf(paste0(picturename,'_qqplot',".pdf"))
  qq(gwasresults$p_wald, main = "Q-Q plot of GWAS p-values", pch = 18, col = "blue4", las = 1)
  dev.off()
}
manhattan_dog('earbend.assoc','earbend')
manhattan_dog('eartip.assoc','eartip')
manhattan_dog('eyeshape.assoc','eyeshape')
manhattan_dog('tailcurve.assoc','tailcurve')
manhattan_dog('skulllength.assoc','skulllength')
manhattan_dog('cephalicindex.assoc','cephalicindex')