# 최재혁 5/20, 5/20

# 문제 1
# 다음과 같이 결측값이 포함된 데이터셋 ds를 생성한 후, 다음 문제를 해결
# 하기 위한 R 코드를 작성하시오.

# ds <- state.x77
# ds[2,3] <- NA; ds[3,1] <- NA; ds[2,4] <- NA; ds[4,3] <- NA

# (1) 각 열별로 결측값이 몇 개인지 출력하시오.
# (2) 결측값이 포함된 행들의 데이터를 출력하시오.
# (3) 결측값이 포함된 행은 몇 개인지 출력하시오.
# (4) 결측값이 포함된 행들을 제외하고 새로운 데이터셋 ds.new를 만들어보시오.

# 1-1
ds <- state.x77
ds[2,3] <- NA; ds[3,1] <- NA; ds[2,4] <- NA; ds[4,3] <- NA
class(ds)
col_na <- function( y ){return( sum( is.na( y ) ) ) }
na.count <- apply(ds,2,col_na)
na.count
colSums(is.na(ds))

# 1-2
rowSums(is.na(ds))

# 1-3
sum(rowSums(is.na(ds)) > 0 )

# 1-4
ds.new <- ds[complete.cases(ds),]
ds.new

# 문제 2
# 다음과 같이 state.x77 데이터셋을 st에 저장한 후 다음 문제를 해결하기
# 위한 R 코드를 작성하시오.

# st <- data.frame(state.x77)

# (1) st의 각 변수(열)들에 대해 특이값이 존재하는지 상자그림을 그려 확인하시오.
# (2) 특이값이 존재하는 경우 이상치를 NA로 대체하여 저장하시오.
# (3) st에서 NA가 존재하는 행들을 제거하여 st2에 저장하시오.

# 2-1
st <- data.frame(state.x77)
st
str(st)
boxplot(st)

# 2-2
Pop_out <- boxplot.stats( st$Population )$out
st$Population[ st$Population %in% Pop_out ]  <- NA

Income_out <- boxplot.stats( st$Income )$out 
st$Income[ st$Income %in% Income_out ]  <- NA

Area_out <- boxplot.stats( st$Area )$out 
st$Area[ st$Area %in% Area_out ]  <- NA

st

# 2-3
st2 <- st[ complete.cases( st ), ]
st2

# 문제 3
# R에서 제공하는 airquality 데이터셋에 대해 다음의 문제를 해결하기 위한
# R 코드를 작성하시오.

# (1) airquality를 AQ에 저장하시오.
# (2) AQ에서 열별로 NA의 개수를 출력하시오.
# (3) AQ에서 행별로 NA의 개수를 출력하시오.
# (4) AQ에서 NA를 포함하지 않은 행들만 출력하시오.
# (5) AQ에서 NA를 NA가 속한 열의 평균값으로 치환하여 AQ2로 저장하고, AQ2의 내용을 출력하시오.		

# 3-1
AQ <- data.frame(airquality)
AQ

# 3-2
colSums(is.na(AQ))

# 3-3
rowSums(is.na(AQ))

# 3-4
perfect <- AQ[complete.cases(AQ),]
perfect

# 3-5

colSums(is.na(AQ)) # Ozone(37), Solar.R(7)
AQ2 <- AQ
AQ2$Ozone[is.na(AQ2$Ozone)] <-mean(AQ2$Ozone, na.rm = TRUE)
AQ2$Solar.R[is.na(AQ2$Solar.R)] <-mean(AQ2$Solar.R, na.rm = TRUE)
AQ2

# 문제 4
# R에서 제공하는 state.x77 데이터셋에 대하여 다음 문제를 해결하기 위한
# R 코드를 작성하시오.

# (1) state.x77 데이터셋을 Population(인구수)를 기준으로 오름차순 정렬하시오.
# (2) state.x77 데이터셋을 Income(소득)을 기준으로 내림차순 정렬하시오.
# (3) Illiteracy(문맹률)가 낮은 상위 10개 주의 이름과 문맹률을 출력하시오.

# 4-1
class(state.x77)
state <- data.frame(state.x77)
class(state)
str(state) # 50 obs, 8 variables

state[order(state$Population),]

# 4-2
state[order(state$Income,decreasing = T),]

# 4-3
Low <- state[order(state$Illiteracy),]
head(Low,10)

# 문제 5
# R에서 제공하는 mtcars 데이터셋에 대하여 다음 문제를 해결하기 위한 R
# 코드를 작성하시오.

# (1) mtcars 데이터셋을 gear(기어)의 개수에 따라 그룹을 나누어 mt.gear에 저장하
# 시오.(단, split() 함수를 사용)
# (2) mt.gear에서 gear(기어)의 개수가 4인 그룹의 데이터를 출력하시오.
# (3) mt.gear에서 gear(기어)의 개수가 3인 그룹과 5인 그룹의 데이터를 합쳐서
# mt.gear.35에 저장하고 내용을 출력하시오.
# (4) mtcars 데이터셋에서 wt(중량)가 1.5~3.0 사이인 행들을 추출하여 출력하시오.

# 5-1
cars <- data.frame(mtcars)
cars
str(cars)   # 32obs, 11 variables
mt.gear <- split( cars, cars$gear )
mt.gear


mt.gear <- split(mtcars,mtcars$gear)
mt.gear

# 5-2
mt.gear$'4'

# 5-3
mt.gear.35 <- rbind(mt.gear$'3', mt.gear$'5')
mt.gear.35

# 5-4
subset( cars,wt > 1.5 & wt < 3.0 )

# 문제 6
# 다음의 문제를 해결하기 위한 R코드를 작성하시오.
# 다음과 같이 데이터프레임 authors와 books를 생성하고 authors와 books의 내
# 용을 출력하시오.	
# authors <- data.frame( surname = c( "Twein", "Venables", "Tierney", "Ripley", "McNeil" ),
#                       nationality = c( "US", "Australia", "US", "UK", "Australia" ),
#                       retired = c( "yes", rep( "no", 4 ) ) )
# books <- data.frame( name = c( "Johns", "Venables", "Tierney", "Ripley", "Ripley", "McNeil" ),
#                     title = c( "Exploratory Data Analysis", "Modern Applied Statistics ...",
#                               "LISP-STAT","Spatial Statistics", "Stochastic Simulation",
#                                "Interactive Data Analysis" ),
#                     other.author = c( NA, "Ripley", NA, NA, NA, NA ) )
# (1) surname과 name을 공통 열로 하여 authors와 books를 병합하여 출력하시오(두
#   데이터프레임에서 공통 열의 값이 일치하는 것들만 병합).
# (2) surname과 name을 공통 열로 하여 authors와 books를 병합하여 출력하되
# authors의 행들이 모두 표시되도록 하시오.
# (3) surname과 name을 공통 열로 하여 authors와 books를 병합하여 출력하되 books
# 의 행들은 모두 표시되도록 하시오.
# (4) surname과 other.author를 공통 열로 하여 authors와 books를 병합하여 출력하시오.	

# 6-1
authors <- data.frame( surname = c( "Twein", "Venables", "Tierney", "Ripley", "McNeil" ),
                        nationality = c( "US", "Australia", "US", "UK", "Australia" ),
                         retired = c( "yes", rep( "no", 4 ) ) )
books <- data.frame( name = c( "Johns", "Venables", "Tierney", "Ripley", "Ripley", "McNeil" ),
                title = c( "Exploratory Data Analysis", "Modern Applied Statistics ...",
                        "LISP-STAT","Spatial Statistics", "Stochastic Simulation",
        "Interactive Data Analysis" ), other.author = c( NA, "Ripley", NA, NA, NA, NA ) )
authors
books
merge(authors, books,by.x = c("surname"),by.y = c("name"))
     
# 6-2
merge(authors,books,by.x = c("surname"),by.y = c("name"),all.x = T)

# 6-3
merge(authors,books,by.x = c('surname'),by.y = c('name'),all.y = T)

# 6-4
merge(authors,books,by.x = c("surname"),by.y = c("other.author"))



