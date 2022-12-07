install.packages('dplyr')
install.packages('plyr')
install.packages('writexl')
library(writexl)
library(dplyr)
library(plyr)
filtro<-subset(nomes,birthLikeDate<1960 & birthLikeDate>1915)
nomes2<-select(filtro,arkId,fullName,birthLikeDate,deathLikeDate)
nomes2
nomes3<-filter(nomes2,fullName=="Antonio Gomes da Silva" | fullName=="Antônio Gomes da Silva")
nomes3
nomes4<-arrange(nomes3,birthLikeDate)
nomes4
write_xlsx(nomes4,path="C:/Users/f0fp1107/Desktop/nomespossiveis.xlsx")