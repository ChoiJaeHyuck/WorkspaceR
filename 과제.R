caraccident <- read.csv('C:\\Workspace\\WorkspaceR\\도로교통공단_시도_시군구별_월별_교통사고(2018).csv', header = T)
caraccident
class(caraccident)
str(caraccident)
dim(caraccident)
head(caraccident)
tail(caraccident)
table(caraccident)

month <- caraccident$월
month
make <- caraccident$발생건수
make
plot(month,make,main="월-발생건수 그래프",xlab="월",ylab="발생건수",col="red",pch=19)
