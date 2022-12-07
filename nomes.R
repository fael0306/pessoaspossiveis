install.packages('dplyr')
install.packages('plyr')
install.packages('writexl')
library(writexl)
library(dplyr)
library(plyr)
nomes<-select(nomespossiveis,arkId,fullName,birthLikeDate,deathLikeDate)
nomes
nomes2<-filter(nomes,fullName=="Antonio Gomes da Silva" | fullName=="Antônio Gomes da Silva")
nomes2
nomes3<-arrange(nomes2,deathLikeDate)
nomes3
write_xlsx(nomes3,path="C:/Users/f0fp1107/Desktop/nomespossiveis.xlsx")
