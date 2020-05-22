# data 읽기

setwd("C:\\Workspace\\WorkspaceR")
baseball <- read.csv( 'C:\\Workspace\\WorkspaceR\\batter_stats_2017.csv', header = T )
baseball

# data 구조 확인

class(baseball)   # data.frame
str(baseball)     # 191 obs, 21 variables
dim(baseball)

baseball$선수 <-  as.character( baseball$선수 )
baseball$팀명 <-  as.character( baseball$팀명 )
str(baseball)

# 결측치 확인

is.na(baseball)
sum(is.na(baseball))   # 결측치 0개

# 특이값 찾기

boxplot.stats( baseball$경기 )$out   # 특이값 0
boxplot.stats( baseball$타석 )$out   # 특이값 0 
boxplot.stats( baseball$타수 )$out   # 특이값 0
boxplot.stats( baseball$안타 )$out   # 특이값 0
boxplot.stats( baseball$홈런 )$out   # 특이값 0

# 팀명 나누기

team <- c()
for ( i in 1:nrow( baseball ) ) {
    if ( baseball[ i, "팀명" ] == "SK" ) {
        team[ i ] <- 1
    } else if ( baseball[ i, "팀명" ] == "KIA" ) {
        team[ i ] <- 2
    } else if ( baseball[ i, "팀명" ] == "두산" ) {
        team[ i ] <- 3
    } else if ( baseball[ i, "팀명" ] == "NC" ) {
        team[ i ] <- 4
    } else if ( baseball[ i, "팀명" ] == "롯데" ) {
        team[ i ] <- 5
    } else if ( baseball[ i, "팀명" ] == "넥센" ) {
        team[ i ] <- 6
    } else if ( baseball[ i, "팀명" ] == "삼성" ) {
        team[ i ] <- 7
    } else if ( baseball[ i, "팀명" ] == "한화" ) {
        team[ i ] <- 8
    } else if ( baseball[ i, "팀명" ] == "LG" ) {
        team[ i ] <- 9
    } else if ( baseball[ i, "팀명" ] == "KT" ) {
        team[ i ] <- 10
    } 
}
team      

# 선수, 팀명 이름 분리

name <- unique( baseball[ , 1] )
name
team2 <- unique( baseball[ , 2 ] )
team2


# 한화 데이터 분리

hanwha <- baseball[ baseball$팀명 == team2[ 9 ],]   # 숫자 바꾸면 해당 팀의 데이터 출력, 한화 = 9
hanwha
dim(hanwha)    
str(hanwha)    
head(hanwha)

# 한화 선수 분리

library( dplyr )

hanwha.player <- hanwha %>% select(선수명)
hanwha.player

# 한화 선수별 타석 정리

player.bat <- hanwha %>% select(타석)
player.bat

a <- hanwha %>% select(선수명, 타석)          # 선수명, 타석 vector
a

max(player.bat)
min(player.bat)
mean(player.bat$타석)
median(player.bat$타석)
quantile(player.bat$타석)

player.bat2 <- player.bat[,1]                        # 벡터형 변환
player.bat2

table( player.bat2 )                                 # 도수분포
pie( player.bat2, main = "선수별 타석" )

boxplot.stats(player.bat2)  

ggplot( a, aes( y = 타석 ) ) +                       # 상자그림
    geom_boxplot( fill = "orange" )

hist( player.bat2, main = "한화 선수 타석 빈도수",        # 히스토그램
      xlab = "타석", ylab = "빈도수",
      border = "black", col = "orange",
      las = 1, breaks = 5 )

ggplot( a, aes( x = 선수명, y = 타석 ) ) +           # 막대그래프
    geom_bar( stat = "identity",      
              width = 0.7,            
              fill = "orange" ) +   
    ggtitle( "선수별 타석" ) + 
    theme( plot.title = element_text( size = 25,
                                      face = "bold",
                                      colour = "black" ) ) +
    labs( x = "선수", y = "타석" ) +
    coord_flip()

library( treemap )

treemap( a, index = c( "선수명", "타석" ),            # 나무 지도
         vSize = "타석",
         vColor = "타석",
         type = "value",
         bg.labels = "orange" )

# 한화 선수별 안타 정리

single.hit <- hanwha %>% select(안타)    
single.hit

b <- hanwha %>% select(선수명, 안타)
b

single.hit2 <- single.hit[,1]
single.hit2

max(single.hit)
min(single.hit)
mean(single.hit$안타)
median(single.hit$안타)
quantile( single.hit$안타)

table( single.hit2 )                                 # 도수분포

boxplot.stats(single.hit2)  

ggplot( b, aes( y = 안타 ) ) +                       # 상자그림
    geom_boxplot( fill = "orange" )

hist( single.hit2, main = "한화 선수 안타 빈도수",        # 히스토그램
      xlab = "안타", ylab = "빈도수",
      border = "black", col = "orange",
      las = 1, breaks = 5 )

ggplot( b, aes( x = 선수명, y = 안타 ) ) +           # 막대그래프
    geom_bar( stat = "identity",      
              width = 0.7,            
              fill = "orange" ) +   
    ggtitle( "선수별 안타" ) + 
    theme( plot.title = element_text( size = 25,
                                      face = "bold",
                                      colour = "black" ) ) +
    labs( x = "선수", y = "안타" ) +
    coord_flip()

library( treemap )

treemap( b, index = c( "선수명", "안타" ),            # 나무 지도
         vSize = "안타",
         vColor = "안타",
         type = "value",
         bg.labels = "orange" )

# 한화 선수별 홈런 정리

homerun <- hanwha %>% select(홈런)
homerun

c <- hanwha %>% select(선수명, 홈런)
c

max(homerun)
min(homerun)
mean(homerun$홈런)
median(homerun$홈런)
quantile(homerun$홈런)

homerun2 <- homerun[,1]                        # 벡터형 변환
homerun2

table( homerun2 )                                 # 도수분포

boxplot.stats(homerun2)  

ggplot( c, aes( y = 홈런 ) ) +                       # 상자그림
    geom_boxplot( fill = "orange" )

hist( homerun2, main = "한화 선수 홈런 빈도수",        # 히스토그램
      xlab = "홈런", ylab = "빈도수",
      border = "black", col = "orange",
      las = 1, breaks = 5 )

ggplot( c, aes( x = 선수명, y = 홈런 ) ) +           # 막대그래프
    geom_bar( stat = "identity",      
              width = 0.7,            
              fill = "orange" ) +   
    ggtitle( "선수별 홈런" ) + 
    theme( plot.title = element_text( size = 25,
                                      face = "bold",
                                      colour = "black" ) ) +
    labs( x = "선수", y = "홈런" ) +
    coord_flip()

library( treemap )

treemap( c, index = c( "선수명", "홈런" ),            # 나무 지도
         vSize = "홈런",
         vColor = "홈런",
         type = "value",
         bg.labels = "orange" )

# 한화 선수들의 타석 별 안타 정리

library( corrplot )

plot( player.bat2, single.hit2,             # 상관도
      main = "타석 - 안타 그래프",
      xlab = "타석",
      ylab = "안타",
      col = "red",
      pch = 19)








# 6. 서울 월별 사고 건수 

seoul.accident <- c()
for ( i in 1:length( month.index ) ) {
    seoul.accident[ i ] <- sum( subset( local.seoul, month == i )$발생건수 )
}
names( seoul.accident ) <- month
seoul.accident

max.month <- max( seoul.accident )
max.month.name <- names( seoul.accident[ seoul.accident == max.month ] )
min.month <- min( seoul.accident )
min.month.name <- names( seoul.accident[ seoul.accident == min.month ] )
cat( "서울 사고 발생이 최고인 월 : ", max.month.name, " [ ", max.month, " ]", "\n", 
     "서울 사고 발생이 최저인 월 : ", min.month.name, " [ ", min.month, " ]" )

barplot( seoul.accident, main = "서울시 월별 발생 건수" )
