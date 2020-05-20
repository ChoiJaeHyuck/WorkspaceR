# 최재혁, 5/19, 5/20

# 문제 1
#     수입 121 99 41 35 40 29 35 24 50 60
# 교육기간  19 20 16 16 18 12 14 12 16 17

# 산점도와 상관계수 그리고 상관관계 설명

income <- c(121,99,41,35,40,29,35,24,50,60)
income
term <- c(19,20,16,16,18,12,14,12,16,17)
term

plot(income,term,main=" 수입과 교육기간 관계그래프",xlab="수입",ylab="교육기간",
     col="red",pch=19)

cor(income,term)

# 결론 : 상관계수가 0.7929108이므로 수입과 교육기간 사이의 (양의)상관관계가 높다.

# 문제 2
#      성적 77.5 60 50 95 55 85 72.5 80 92.5 87.5
#  시청시간   14 10 20  7 25  9   15 13    4   21

# 산점도와 상관계수 그리고 상관관계 설명

score <- c(77.5,60,50,95,55,85,72.5,80,92.5,87.5)
score
watchtime <- c(14,10,20,7,25,9,15,13,4,21)
watchtime

plot(watchtime,score,main="TV시청시간과 성적 관계그래프",xlab="TV시청시간",
     ylab="성적",col="blue",pch=19)

cor(watchtime,score)

# 결론 : 상관계수가 -0.6283671이므로  TV시청시간과 성적 사이의 (음의)상관관계가 높다.

# 문제 3

# mtcars에서 mpg와 다른 변수들 간의 상관계수를
# 구하시오. 어느 변수가 mpg와 가장 상관성이 높은지 산점도와 함께 설명하시오.

mtcars
str(mtcars)
# mtcars의 variable : mpg, cyl, disp, hp, drat, wt, qsec, vs, am, gear, carb

cor(mtcars$mpg,mtcars$cyl)  # -0.852162
cor(mtcars$mpg,mtcars$disp) # -0.8475514
cor(mtcars$mpg,mtcars$hp) # -0.7761684
cor(mtcars$mpg,mtcars$drat) # 0.6811719
cor(mtcars$mpg,mtcars$wt) # -0.8676594
cor(mtcars$mpg,mtcars$qsec) # 0.418684
cor(mtcars$mpg,mtcars$vs) # 0.6640389
cor(mtcars$mpg,mtcars$am) # 0.5998324
cor(mtcars$mpg,mtcars$gear) # 0.4802848
cor(mtcars$mpg,mtcars$carb) # -0.5509251

pairs(mtcars[,1:11], main = "multi")

# 결론 : mtcars에서 mpg변수와 가장 상관관계가 높은것은 wt변수이다. 왜냐하면 상관계수가 가장 높다.(-0.8676594)

# 문제 4
# 다음은 2015년부터 2026년도까지의 예상 인구수 추계자료이다. 연도를 x축으로 하여 선그래프를 작성하시오.

# 연도		총인구 (천명)		연도		총인구 (천명)
# 2015		51014				2021		52123
# 2016		51245				2022		52261
# 2017		51446				2023		52388
# 2018		51635				2024		52504
# 2019		51811				2025		52609
# 2020		51973				2026		52704

year <- c(2015:2026)
year
totalpopulation <- c(51014,51245,51446,51635,51811,51973,
                     52123,52261,52388,52504,52609,52704)
totalpopulation
plot(year,totalpopulation,main="연도별 예상 인구수",type="l",lty=1,lwd=5,
     col="green",ylim=c(51014,52704),xlab="year",ylab="totalpopulation")

# 문제 5
# 도로교통공단 시도 시군구별 월별 교통사고.csv 파일에 대한 EDA를 수행하시오.

caraccident <- read.csv('도로교통공단_시도_시군구별_월별_교통사고(2018).csv',header = T)
caraccident

class(caraccident)      # data.frame
str(caraccident)        # 2745 obs, 9 variables
dim(caraccident)

caraccident2 <- caraccident[,c("시도","시군구","월","발생건수","사망자수","부상자수","중상","경상","부상신고")]
caraccident2

region <- caraccident$"시도"
region

region.detail <- caraccident$"시군구"
region.detail

month <-caraccident$"월"
month

make <- caraccident$"발생건수"
make

death <- caraccident$"사망자수"
death

injury <- caraccident$"부상자수"
injury

bigdamage <- caraccident$"중상"
bigdamage

smalldamage <- caraccident$"경상"
smalldamage

report <- caraccident$"부상신고"
report

plot(make,injury,main="발생건수-부상자수 그래프",xlab="발생건수",ylab="부상자수",col="blue",pch=19)
plot(injury,bigdamage,main="부상자수-중상 그래프",xlab="부상자수",ylab="중상",col="green",pch=19)
plot(smalldamage,report,main="경상-부상신고 그래프",xlab="경상",ylab="부상신고",col="purple",pch=19)
plot(region,make,main="시도-발생건수 그래프",xlab="시도",ylab="발생건수",col="red",pch=19)

pairs(caraccident[,-2])
cor(make,injury)           # 0.9927304
cor(injury,bigdamage)     # 0.935127
cor(smalldamage,report)   # 0.7346448

par( mfrow = c( 1, 3 ) )
par( mfrow = c( 1, 1 ) )

# 결론 : 발생건수-부상자수의 상관관계는 매우높고, 부상자수-중상의 상관관계도 매우 높으며,
#        경상-부상신고의 상관관계는 높다.

