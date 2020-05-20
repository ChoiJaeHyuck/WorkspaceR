#
# 2일차 R Script 실습
#

#1. 값을 이용한 계산
class(3)
class(5)
3+5
print(3+5)
#
#일반적인 출력 장치를 표준 출력장치
#라고하며, 장치 지정을 하지 않아도
#장치를 지정하지 않아도 자동으로 사용되는 장치를 의미
#
#stdout( 표준 출력 장치 ) : 모니터
#studin( 표준입력장치 ) : 키보드
#stderr( 표준 erroe 표시 장치 ) : 모니터
#

print( 10 + 5 )     #덧셈
print( 10 - 5 )     #뺄셈
print( 10 * 5 )     #곱셈
print( 10 / 5 )     #나눗셈
print( 10 %% 5 )    #나머지
print( 10 ^ 5 )     #제곱

#
# 변수( Variable )
# : 메모리 영역애 대한 이름
# : 값을 저장하는 매모리 영역
#
number10 <- 10
number2 <- 8
print( number1 + number2 )
print( number1 - number2 )
print( number1 * number2 )
print( number1 / number2 )
print( number1 %% number2 )
print( number1 ^ number2 )

#
#산술 연산 함수
#
log( 10 ) + 5  # 로그함수
sqrt( 25 )     # 재곱근 함수
max( 5, 3, 2)  # 최대값 구하는 함수
min( 5, 3, 2)  # 최소값 구하는 함수
abs( -5 )      # 절대값 함수
factorial( 5 ) # 팩토리얼 함수
sin( pi / 2 )  # 삼각함수
con( pi / 2 )  # 삼각함수
tan( pi / 2 )  # 삼각함수

# 변수 ( variable )
# : 메모리 영역에 대한 이름
# : 값을 저장하는 메모리 영역
#


var1 <- 10
var2 <- 50
var3 <- 15*25
var4 <- var1 / var2
print( var1 )
print( var2 )
print( var3 )
print( var4 )

var5 = 10 * 9
print( var5 )


#
# 자료형( Data type )
# : 값에 대한 형태
#
number <- 10
string <- "R script"
boolean <- TRUE
temp <- NULL

#str() : 변수의 내용 ( type, 값 ) 확인 함수
class( number ); str( number )
class( string ); str( string )
class( boolean); str( boolean )
class( temp ); str ( temp )

missing <- NA     # NA : 결측지 ( missing value )
chrnum <- '10'    # 영숫자 : 숫자모양이지만 문자임

class( missing ); str( missing )
class( chrnum ); str( chrnum )

#
# Data Type 확인 / 변환
#
number <- 150
chanum <- '10'

class ( number )
class ( chanum )

# is로 시작하는 함수는 확인 함수 : 결과 논리값
is.numeric( number )   
is.numeric( chanum )

is.character( number )
is.character( chanum )

# as로 시작하는 함수는 형 변환 함수
result <- number + as.numeric( chanum )
class( result ); str( result )
print( result )




#
#vector ( 벡터 ) : 동일 자료형 값의 집합
#                : 1차원 배열, 열의 집합 이라고도 한다.
# c() : connect의 약자로 벡터 생성 함수
#
vector <- c( 1, 3, 5, 7, 9)
vector2 <- c( 'hello', 'world', 'R script')
vector3 <- c( TRUE, FALSE, TRUE, TRUE)

class( vector ); class(vector2 ); class(vector3 )
str( vector ); str( vector2); class(vector3 )
print( vector ); print(vector2 ); print( vector3 )

vector4 <- c( 1, 2, 3, '4', '5', '6' )
class( vector4 )
str( vector4 )
print( vector4 )

#
#연속값을 저장하는 벡터
#
vector5 <-  1:10
vector6 <-  c( 1, 2, 3, 5:10 )

print( vector5 )
print( vector6 )

vector_tc <- c( 1, 2, TRUE, FALSE )
class( vector_tc )
str( vector_tc )
vector_tc

vector7 <- seq( 1, 101, 3 )
vector8 <- seq( 0.1, 1.0, 0.1 )
vector9 <- rep( 1, times = 5 )
vector10 <- rep( 1:5, times = 3 )
vector11 <- rep( c( 1, 5, 9 ), times = 3)

vector7
vector8
vector9
vector10
vector11

#
# 벡터 원소값에 이른 지정
#
score <- c( 90, 85, 70 )
score
names ( score )
names ( score ) <- c( 'hon', 'kim', 'lee' )
names ( score )
score


#
# 벡터 길이
#
length( score )

#
# 백터 요소 읽기
score[ 1 ]
score[ "kim" ]
score[ 2 ]

#
#벡터 요소 쓰기
#
score
score[ 1 ] <- 55
score

score[ 'lee' ] <- 77
score

#
# 벡터 요소 한 번에 여러개 읽기
#
v <- c( 1, 4, 3, 7, 8)

v[ c( 1, 3, 5)]
v[ 1:3 ]
v[ seq( 1, 5, 2) ]  #첫번째에서 다섯번째 중에서 2간격
v[ -2 ]             #말그대로 두번째 빼기  
v[ -c( 3:5 ) ]      #세번째에서 다섯번째 빼기

v[ c( 1, 3, 5)] <- 5   #첫번째 세번째 다섯번째를 5로 바꿔라
v
v[ -2 ] <- 100         #두번째를 제외하고 나머지를 100으로 바꿔라
v

#
# 벡터간 연산
#
x <- c( 1, 2, 3 )   #두 벡터간 길이가 같아야 연산이 가능
y <- c( 4, 5, 6 )
x + y               # 벡터 합 계산
x * y               # 벡터 곱 계산
z <-  x + y
z



#
# 벡터에 적용가능 한 함수
#
v <- c( 1 : 10 )

sum( v )                      # 합계
sum( 2 * v )
mean( v )                     # 평균
mean( v[  1:5 ])
median( v )                   #증앙값
median( v[  1:5 ])
max( v )                      #최대값
min( v )                      #최소값
sort( v )                     #정렬 : 줄새우기, sort는 오름차순
sort( v, decreasing = FALSE )
sort( v, decreasing = TRUE )
range( v )                    #값의 범위( 최솟값~최대값 )
var( v )                      #분산
sd( v )                       #표준편차

avg <-  sum( v ) / length( v )
avg


#
# 관계 / 논리연산
# 관계 연산자 : >, >=, <, <=, ==,!=
# 논리 연산자 : &&, &( AND ), ||, |( OR ), !( NOT )
#
number1 <- 10
number2 <- 19
number3 <- 3

number1 > number2
number1 <= number2

# 관계/논리 연산자 이용한 논리 연산
( number1 > number2 ) && ( number1 > number3 ) # 논리연산 : AND 모두 참일 때 다 참
( number1 > number2 ) || ( number1 > number3 ) # 논리연산 : OR  하나만이라도 참이면 참

#
# 관계연산자를 벡터에 적용
#
v <- 1:10

v >= 5                       # 벡터 하나하나가 5보다 큰 것 
v[ v > 5 ]
sum( v > 5 )                 # sum은 TRUE=1, FALSE=0이다 따라서 5보다큰 6부터 1로 0000011111
v == 5                       #5랑 같으면 TRUE 다르면 FALSE 

condition <- v > 5 & v < 8
condition
v[ condition ]

#
#1. Review
#
# & 과 &&, | 와 || 차이
#
vt <-  c( TRUE, FALSE )
vt2 <-  c( FALSE, TRUE )

vt & vt2     # 벡터 요소 각각에 대하여 AND 연산 수행
vt && vt2    # 벡터 첫번째 요소에 대하여 AND 연산 수행 

#
# () 와 []의 차이
#
# () : 1. 연산식에서 우선순위 변경목적, 2. 함수에서 인수전달
# [] : 벡터, 리스트, 매트릭스, 데이터프레임에서 요소를 지정하는 목적

#
#vector
#
v <- 1:10

v > 5
all( v > 5 )    # 벡터의 모든 요소가 조건에 만족하는가?
any( v > 5 )    # 벡터의 요소중 조건에 만족하는게 있는가?

head( v )       # 처음부터 일정 개수(defauit : 6개 )
tail( v )       # 끝에서부터 일정 개수 (default : 6개 ) 
head( v, 3 )    
tail( v, 3 )

#
#집합 ( set ) : 중복 데이터가 없는 벡터
#
x <- c( 1, 2, 3 )
y <- c( 3, 4, 5 )
z <- c( 3, 1, 2 )

union( x, y )      #합집합   
intersect( x, y )  #교집합
setdiff( x, y )    #차집합
setequal( x, y )   #동일한 요소가 있는가 확인

#
# 2.1 List
#
# List : 동일 자료형, 다른 자료형을 저장할 수 있는 벡터
#
#list() : List 생성 함수key( 이름 ) = Vaiue( 값 ) 형식이다.          
#
v <- c( 90, 85, 70, 84 ) 
l <- list( name = 'hong', age = 30, status = TRUE, score = v )
l

l[1]
l[4]

l[[1]]
l[[4]]
l[[4]][1]

l$name
l$score

#
# 2.2 factor( 범주형, categorical )
#
# factor 형 : 문자 형태로 저장되며 범위를 갖는 값을 저장
#             하는 data type
# factor() : 팩터형 벡터 생성 함수
#
bt <-  c( 'A', 'B', 'B', 'O', 'AB', 'A')  # 문자형 벡터
bt.factor <- factor( bt )                 # 팩터형 벡터
 
bt
bt.factor

gender <- c( '남', '여', '여', '남', '남', '여', '여','남')
gender.factor <- factor( gender )

gender
gender.factor

bt[ 3 ]
bt.factor[ 3 ]

gender[ 5 ]
gender.factor[ 5 ]

levels( bt.factor )
levels( gender.factor )

as.integer( bt.factor )
as.integer( gender.factor )

gender.factor[ 5 ]                   #warning(경고)는 무시해도 됨/erroe는 다름
gender.factor[ 5 ] <-  ' 중 '
gender.factor

#
# 2.3 matrix( 행렬, 2차원 배열 ) : 동일 자료형의 데이터를 저장하는 벡터의 집합
#
# row(행), observation(관측값), data
# column(열), variable(변수)
#
# matrix() : matrix 생성 함수
#

z <- matrix( 1:20, nrow = 4 )   #열 우선으로 채움(기본)
z

class( z )      #타입을 알려줌
str( z )        
dim( z )

z <- matrix( 1:20, nrow = 4, ncol = 5 )
z

z <- matrix( 1:20, nrow = 4, ncol = 5, byrow = T )
z

x <- 1:4
y <- 5:8
Z <- matrix( 1:20, nrow = 4,ncol = 5 )

m1 <-  cbind( x, y )                    #bind는 연결이라는 뜻/ cbind는 가로안을 변수로 봄
m1
m2 <-  rbind( x, y )                    #rbind는 인수를 관측치로 보고 메트릭스를 만듬
m2
m3 <-  rbind( m2, x )
m3
m4 <-  cbind( z, x )
m4

#
# matrix에서  cell의 값 읽기
z[ 2, 3 ]
z[ 1, 4 ]
z[ 2, ]                        #(2, )는 2행 전체라는 뜻
z[ ,4 ]

z[ 2, 1:3 ]
Z[ 1, c( 1, 2, 4 ) ]           #1행의 1열 2열 4열 이란 뜻
Z [ 1:2, ]                     #1행과 2행의 전체(행이 두개여서 메트릭스로 나옴)
Z[ , c( 1, 4 ) ]               #전체의 1열과 4열(열이 두개여서 메트릭스로 나옴)


#
#matrix 행/열에 이름 지정
#
score <- matrix( c( 90, 85, 69, 78, 
                    85, 96, 49, 95,
                    90, 80, 70, 70 ),
                 nrow = 4, ncol = 3 )
score

rownames( score ) <- c( 'hong', 'kim', 'lee', 'yoo' )  # 행이름
colnames( score ) <- c( 'english', 'math', 'science' )  # 열이름
score

score[ 'hong', 'math' ]
score[ 'kim', c( 'math', 'science' ) ]
score[ 'lee', ]
score[ , 'english' ]

rownames( score )
colnames( score )
colnames( score )[ 2 ]

c <- colnames( score )
c[ 2 ]

#
# 2.4 data frame
#
# data frame : matrix와 동일한 구조을 갖으며 자료형에 구애받지 않고 저장하는 matrix
#
#
# data,frame( ) : data frame을 생성하는 함수
#

city <- c( 'seoul', 'busan', 'daejeon' )
rank <- c( 1, 2, 3 )
city.info <- data.frame( city, rank )
city.info

class( city.info )
str( city.info )
dim( city.info )                       #차원

name <- c( 'hong', 'kim', 'lee' )
age <- c( 22, 30, 25 )
gender <- factor( c( 'm', 'f', 'm' ))
blood.type <- factor( c( 'a', 'o', 'b' ))

person.info <- data.frame( name, age, gender, blood.type )
person.info
str( person.info )

#
# data frame 요소 읽기
#
city.info[ 1, 1 ]
city.info[ 1,  ]
city.info[ , 1 ]
city.info[ city.info$city == 'seoul', ]
city.info[ , 'rank' ]

person2.info <- data.frame( name = c ( 'hong', 'kim', 'lee' ),
                             age= c( 22, 20, 25 ),
                             gender = factor( c( 'm', 'f', 'm' )),
                             blood = factor( c( 'a', 'o', 'b')))
person2.info

person.info$name
person.info[ person.info$name == 'hong', ]
person.info[ person.info$name == 'hong', c('name', 'age' )]

data()

iris
head( iris )
tail( iris )

class( iris )
str( iris )
dim( iris )

iris[ , c( 1:2 )]
iris[ , c( 1, 2, 3 )]
iris[ , c( 'Sepal.Length','Species' ) ]
iris[ 1:5, ]
iris[ 1:5, c (1, 3 ) ]

#
#matrix / dataframe 에서 사용하는 함수
#
class( state.x77 )
class( iris )

dim( state.x77 )
dim( iris )

str( state.x77 )
str( iris )

nrow( state.x77 )
nrow( iris )

ncol( state.x77 )
ncol( iris)

head( state.x77 )
head( iris )

tail( state.x77 )
tail( iris )

unique( iris[, 5 ])   #중복된 것 빼고중복 안되게금 나옴

table( iris [, 5 ] )                             #그룹별로 개수를 샐 때/ 이 함수를 쓰려면 factor type이 유용하다. 
       table( person.info[ , 'blood.type' ] )
       table( person.info[ , 'gender'] )
    
#
# matrix/data frame 산술 연산 함수
#
colSums( iris [ , -5 ] ); apply(iris[ , 1:4 ], 2, sum )     # 열별 합
colMeans( iris[ , -5] ); apply(iris[ , 1:4], 2, mean )      # 열별 평균
rowSums( iris[ , -5 ] ); apply( iris[ , -5 ], 1, sum )      # 행별 합
rowMeans( iris[ , -5 ] ); apply( iris[ , -5 ], 1, mean )    # 행별 평균
apply( iris[ , -5 ], 2, median )                            # 열별 중앙값 

sx <- state.x77
head( sx )
sx.t <- t( sx )        # 행과 열의 방향 전환, 전치
head( sx.t )

#
# 조건애 맞는 행과 열추출( data frame만 가능 )/matrix에선 못씀
#
subset( iris, Species == 'setosa' )
subset( iris, Sepal.Length > 5.0 & Sepal.Width > 4.0 )

subset( iris, Sepal.Length > 5.0 & Sepal.Width > 4.0 )[ , c( 2, 4 ) ]

#
# matrix/data frame 산술연산
#
m1 <- matrix( 1:20, 4, 5 )
m1
m2 <- matrix( 21:40, 4, 5 )
m2

2 * m1
m2 - 5
2 * m1 + 3 *m2

m1 + m2
m2 - m1
m2 / m1
m1 * m2

#
# matrix를 data frame으로, data frame을 matrix로 변환
#
st <- data.frame( state.x77 )
class( st)
str( st )
dim( st )

iris.m <- as.matrix( iris )
class( iris.m )             #.m하면 메트릭스로 변환해라
str( iris.m )
dim( iris.m )

# data type 확인 함수
is.matrix( state.x77 )
is.matrix( iris.m )
is.data.frame( st )
is.data.frame( iris )

#
# R의 데이터 타입 : 숫자, 문자, 논리, factor, NULL, NA
#       -변수
#      # 1차원 배열
#       -vector
#       -list
#      # 2 차원 배열
#       -matrix
#       -data frame

#
# 2.5 파일 읽기/쓰기
#
# csv file 내용 읽어서  data frame 생성 / csv(comma seperator velue)
#
air <-  read.csv( 'C:\\Workspace\workspaceR\\airquality.csv',  header = T )   #맨 위의 첫줄을 
air2 <- read.csv( 'C:\\Workspace\workspaceR\\airquality.csv', header = F )

class( air )
class( air2 )

str( air )
str( air2 )

dim( air )
dim( air2 )

air
air2

#day4
#
# 1. Review
#
# 변수명 / 표준 입력 / 표준 출력
#
# 변수명 부여 방식( 항상 소문자로 시작한다. )
numberValue <- 1                     # camel 표기법 : 시작은 소문자인데 중간에 대문자(낙타)
str_value <-  " R Language "         # snake 표기법 : 소문자로 시작해서 '_'를 이용 
booleanvalue <- TRUE                 # 일반 표기법  : 다 소문자 일반 방식, 단어 구분이 명확하지 않음, 의미전달이 바로 X

# 표준 출력 장치에 출력
#
# print() : 자동 줄바꿈( \n, 자동 개행 )
numberValue; print( numberValue )
str_value; print( str_value )
booleanvalue; print( booleanvalue )

# cat() : 여러내용을 출력할 수 있고, 자동 줄바꿈이 일어나지 않는 표준 출력 장치에 출력하는 함수
# 제어 문자 : 화면에 충력되지 않고 기능을 수행하는 문자 
# \n : 개행 문자 ( 줄바꿈 )
# \t : tap 문자
#
cat( 'Numeric number : ', numberValue, '\n' )
cat( ' String : ', str_value, '\n' )
cat( 'Boolean value : ', booleanvalue, '\n' )
print( ' ------------------------------------' )
cat( 'Numberic number : ', numberValue, '\t' ,
     'String : ', str_value, '\t',
     'Boolean value : ', booleanvalue, '\n' )
#
#표준 입력 장치로 부터 입력
#
# scan( ) : 표준 입력 장치로 부터 입력 받는 함수
# readline( ) : 표준 입력 장치로부터 입력 받는 함수 
# edit( ) : 표준 입력 장치로부터 표형식 입력 받는 함수 
#
inputData <- scan() # 빈줄이 입력될때 까지 숫자를 입력 받는다.
class( inputData ) 
inputData

inputData <- scan( what = character() ) # 문자 입력 방식
class( inputData )
inputData

inputData <- readline( 'Input data <- ' )
class( inputData )
inputData


number1 <- readline( 'Input number1 : ' )
number2 <- readline( 'Input number2 : ' )
result <- as.numeric( number1 ) + as.numeric( number2 )
result

#
#실습 문제 : 두 수를 입력 받아서 다음과 같이 출력
# 입력
#      Input number1 : [ 10 ]
#      Input number2 : [ 5 ]
#  출력결과
#      10 + 5 = 15
#      10 - 5 = 5
#      10 * 5 = 50
#      10 / 5 = 2
#      10 %% 5 = 0

number1 <- readline( 'Input number1 - ' )
class( inputdata )
inpudata


#
number1 <- as.numeric( readline( 'Input number1 : ' ) )
number2 <- as.numeric( readline( 'Input number2 : ' ) )

resultAdd <- number1 + number2
resultSub <- number1 - number2
resultMul <- number1 * number2
resultDiv <- number1 / number2
resultRem <- number1 %% number2

cat( number1, ' + ', number2, ' = ', resultAdd, '\n',
     number1, ' - ', number2, ' = ', resultSub, '\n',
     number1, ' * ', number2, ' = ', resultMul, '\n',
     number1, ' / ', number2, ' = ', resultDiv, '\n',
     number1, ' %% ', number2, ' = ', resultRem, '\n' )

#
#2.1 Algorithm 이해
#
#Algorithm( Logic ) : 문제를 해결하기 위한 일처리 순서
#
#Algorithm 요건
# 1. 입력 : 반드시 0개 이상의 입력이 있어야 한다. / 0개는 없을 수도 있다.
# 2. 출력 : 반드시 1개 이상의 출력이 있어야 한다.
# 3, 유한성 : 반드시 끝낼수 있어야한다.
# 4. 효과성 : 효과적인 방법으로 정의되어야 한다.
# 5. 명확성 : 명확한 방법으로 정의 되어야 한다.
#
# 컴퓨터 프로그램의 구조
#
# - 순차구조 : 시작부터 끝날때 까지차례대로 수행
# - 선택구조 : 조건에 따라 처리 방향을 바꾸어서 수행
# - 반복구조 : 조건이 만족하는 동안 동일한 내용을 반복 수행
# 컴퓨터 프로그램은 알고리즘에 기반으로 기억장소 원리와 
#                   순차/ 선택/ 반복구조를 조합하여 작성한다.

#
# 2.2 선택 구조
#
# 선택 구조 종류
# 1. 단순 선택 구조
# 2. 양자 선택 구조
# 3. 다중 선택 구조
# 4. 중첩 선택 구조
#
# 1. 단순 선택 구조
job.type <- 'A'
bonus <- 0
if ( job.type == 'A' ) {                       # if다음에는 ()룰 해야함/ {} : code block( code 집합 )
    bonus <- 200
}
cat( 'job type : ' , job.type, '\t\tbonus : ', bonus )

# 2. 양자 택일 구조
job.type <- 'B'
bonus <- 0
if ( job.type == 'A' ) {                       # if다음에는 ()룰 해야함/ {} : code block( code 집합 )
    bonus <- 200
} else {                                       #  조건이 거짓일 때 else 밑에 있는 100을 선택 / else 는 줄바꾸면 안됨  
    bonus <- 100
}
cat( 'job type : ' , job.type, '\t\tbonus : ', bonus )

# 3. 다중 선택 구조
score <- 50
if ( score >=90 ) {
    grade <- 'A'
} else if ( score >= 80 ) {
    grade <- 'B'
} else if ( score >= 70 ) {
    grade <- 'c'
} else if ( score >= 60 ) {
    grade <- 'D'
} else {
    grade <- 'F'
}
cat( 'score : ', score, '\t\tgrade : ', grade )

# 4. 중첩 선택 구조
a <- 2
b <- 1
c <- 3
if ( a > b ) {
    if ( a > c ) {
        max <- a
        if ( b > c ) {
            mid <-  b; min <- c
        } else {
            mid <-  c; min <- b
        }
    } else if ( c > b ) {
        max <- c; mid <- a; min <- b
    }
} else if ( b > c) {
    max <- b
    if ( a > c ) {
        mid <- a; min <- c
    } else {
        mid <- c; min <- a
    }
}
cat( 'max : ', max, '\tmid : ', mid, '\tmin : ', min )

number <- 10
reminder <- number %% 2

if ( reminder == 0 ) {
    oddeven <- ' 짝수 '
} else {
    oddeven <- '홀수 '
}
cat( 'Number : ', number, ' 는 ', oddeven, ' 이다. ' )

a <- 5
b <- 20

if ( a > 5 & b > 5 ) {
    cat( a, ' > 5 and ', b, ' > 5 ' )
} else {
    cat ( a, ' <= 5 or ', b, ' <= 5 ' )
}

a <- 8; b <- 5; c <- 10; max <- a
if ( b > max ) {
    max <- b
}
if ( c > max ) {
    max <- c
}
cat( ' a = ', a, ' b = ', b, ' c = ', c, ' max = ', max )

a <- 8; b <- 5; c <- 10; min <- c
if ( a < min ) {
    min <- a
}
if ( b < min ) {
    min <- b
}
cat( ' a = ', a, ' b = ', b, ' c = ', c, ' min = ', min )

# 
#실습 문제 : 하나의 숫자를 입력 받아 짝수인지 홀수 인지 출력

number <-as.numeric( readline( 'Input number : ' ) )
if ( number %% 2 == 0 ) {
    cat( number, '는 짝수입니다. ' )
} else {
    cat( number, '는 홀수 입니다. ' )
}

#
# 실습 문제 : 하나의 숫자를 입력받아 3의 배수이면 "3의 배수"
#                                    5의 배수이면 "5의 배수"
#                                    3, 5의 배수가 아니면 "3, 5의 배수가 아닙니다."
#                                    출력

number <- as.numeric( readline( 'Input number : ') )
if ( number %% 3 == 0 ) {
    cat( number, ' 3의 배수' )
} else if ( number %% 5 == 0 ) { 
     cat( number, ' 5의 배수 ' )
} else {
    cat( number, ' 3, 5의 배수가 아닙니다. ' )
}

#
# 2.3 반복 구조
#
#반복구조 : 조건이 만족하는 동안 동일한 내용을 반복 수행
#
#   1. 반복 횟수가 정해진 경우 : for
#   2. 반복 횟수가 정해지지 않은 경우 : while
#
#   for문 : for( [반복제어변수] in [반복범위] ) { }
#
for ( i in 1:10 ) {     # i 가 반복 제어 변수 i는 임의로 정한 것 
    print( '*' )
}

for ( i in 1:10 ) {
     cat( i, ' ')
}

multiple = 2
for ( i in 2:9 ) {
    cat(multiple, ' * ', i , ' = ', multiple * i, '\n' )
}

for ( i in 2:9 ) {
    for ( j in 1:9 ) {
        multiple = i * j
        cat( multiple, '\t' )
    }
}

#
#반복 제어 변수 초기화 
#while ( 반복 제어 변수 조건 검사 ) {
# 반복 제어 변수 값 변경
# }

i <-  1  #반복제어 변수 초기화
while( i <= 10 ) { # 반복 제어 변수 조건 검사, 참인 동안 반복
    print( ' * ')  
    i <- i + 2      # 반복 제어 변수 값 변경, 누적
}

i <- 2
while ( i <= 9 ) {
    j <- 1
    while ( j <=9 ) {
        multiple = i * j
        cat( multiple, '\t' )
        j <-  j + 1
    }
    cat( ' \n ' )
    i <- i + 1
}
#
# 2.4 함수 
#
# 함수( Function ) : 단위 기능을 수행하는 코드 집합
#
# 함수 종류
# 1, 내장 함수 : R에 미리 내장된 함수( 기본 함수 )
# 2. 3rd party 함수 : 제 3 자가 작성하여 배포한 함수
# 3. 사용자 정의 함수 : 사용자가 직접 정의한 함수
#
# 함수 형식
#
# 함수 이름(명) <-  function( 인수 목록 ) {
#       함수 내용에 해당하는 코드 집합
#       return ( return 값 ) 
#   }
# 함수 호출
#
#   함수명 ( 인수 목록 )
#

# 함수 정의
multiple <- function( x ){
    for ( i in 1:9 ) {
        multiple <- x * i
        cat( x, ' * ', i, ' = ', multiple, ' \n ' )
    }
}

# 함수 호출
multiple( 2 )

# return 값이 있는 함수
mymax <- function( x, y ) {
    unm.max <- x
    if ( y > num.max ) {
        num.max <- y
    }
    return( num.max )
}

mymax( 5, 6 )

a <- 10; b <- 5; c <- 8
max <- mymax( a, b ); max <- mymax( max, c )
max

#return값이 여러개인 함수
myCalc <- function( x, y ) {
    add <- x + y
    sub <- x - y
    mul <- x * y
    div <- x / y
    rem <- x %% y
    return( list( ret.add = add, ret.sub= sub, ret.mul = mul,
                  ret.div = div, ret.rem = rem ) )
}

result <- myCalc( 10, 5 )
cat( '10 + 5 = ', result$ret.add, '\n' )
cat( '10 - 5 = ', result$ret.sub, '\n' )
cat( '10 * 5 = ', result$ret.mul, '\n' )
cat( '10 / 5 = ', result$ret.div, '\n' )
cat( '10 %% 5 = ', result$ret.rem, '\n' )

myCalc2 <- function( x, y ) {
   result <- c( x + y , x - y, x * y, x / y, x %% y )
   return ( result )
}

myCalc2( 10, 5)

#
# 5일차
#
# Text 'File 읽기'
setwd( " C:\\Workspace\\workspaceR ")    #역슬레쉬 두개 써야함 
df <- read.table( file = "airguality.txt ", header = T )
df

class( df )

#
#Excel 파일 읽기
#
# Excel 파일 읽기용 패키지 설치
install.packages( "xlsx" )            # Excel 파일 읽기 패키지
install.packages( "rJava ")           # Java 실행 패키지

# 기본 패키지 외에 설치된 패키지 사용 ( Library Load )
library( rJava )                      #엑셀파일을 읽고싶으면 반드시 이 두 library를 읽어야함
library( xlsx )                       #이 순서를 유지해야함

df.xlsx <- read.xlsx( file = "airquality.xlsx",  # 파일 저장 경로 설정 
                      sheetIndex = 1,
                      encoding = "UTF-8" )
df.xlsx
class( df.xlsx )
str( df.xlsx )
head( df.xlsx )
tail( df.xlsx )

score <- c( 76, 84, 69, 50, 95, 6, 85, 71, 88, 84 )
which( score ==69 )      # 조건에 만족하는 위치의 index
which( score >= 85 )  
max( score )
which.max( score )       # 최고값의 index
min( score )     
which.min( score )       # 최저값의 index

idx <- which( score >= 60 )
score[ idx ] <- 61
score

idx <- which( df.xlsx[ , 1:2 ] == "NA", arr.ind = TRUE )
                    # arr.ind = TRUE : 해당조건의 행/열값을 확인할 때 
idx       

#2.1 txt/text 파일 읽기
#
# text File 읽기
setwd( "C:\\Workspace\\workspaceR" )
df.txt <- read.table( file = "airquality.txt",
                    header = T,
                    encoding =  "UTF-8 ")
df.txt

class( df.txt )
str( df.txt )
head( df.txt )
tail( df.txt )

#2.2 자료의 종류
#
#-자료의 종류에 따라 적용할 수 있는 분석 방법이 다르다.
#-분석을 해야할 자료를 가지고 있을 때 1차적으로 해야 할 일은
# 해당자료가 어떤 분류에 속하는지를 파악하는 일이다.
#
#-자료 특성에 따른 분류
# 분석 대장 자료의 특성에 따라 범주형 자료와 연속형 자료로 분류한다.
#
# 1. 범주형 자료( categorical data )
#    - 범주 또는 그룹으로 구분할 수 있는 값
#    - 범주형 자료의 값은 기본적을 숫자로 표현할 수 없고,
#      대소비교나 산술연산이 적용되지 않는다.
#    - 범주형 자료는 대체로 문자형 값을 갖는데, 숫자로 표기할 수 있으나 
#      계산이 가능한 연속형 자료가 되는 것은 아니다.
#
# 2. 연속형 자료( ummerical data )
#    - 크기가 있는 숫자들로 구성된 자료
#    - 연속형 자료의 값들은 대소비교, 산술연산이 가능하기 때문에 다양한 
#      분석 방법이 존재한다.
# 
# 자료( data ) : 어떤 주제를 가지고 값을 모아 놓은 것 전체
# 관측값( odservation ) : "연구, 조사, 관찰하고 싶은 대상의 특성:"
#
# 번수 개수에 따라
#    1. 단일변수 자료( univariate data ), 일변량의 자료
#       하나의 변수로 구성된 자료
#    2. 다중변수 자료( multivariate data ), 다변량 자료
#       두 개이상의 변수로 구성된 자료
#       특별히 두개의 변수로 구성된 자료를 이변량 자료 ( bivatiate data )
#
#     단일 변수 자료는 vector에 저장하여 분석
#     다중 변수 자료는 matrix 또는 data frame에 저장하여 분석
#
# 변수의 개수와 자료의 특성에 따른 분류
# 1. 단일변수 범주형 자료
# 2. 단일변수 연속형 자료
# 3. 다중변수 범주형 자료
# 4. 다중변수 연속형 자료
#
# 2.3 단일 변수 범주형 자료 탐색
#
# 단일 변수 범주형 자료 : 특성이 하나이면서 자료의 특성이 범주형인 자료
# 범주형 자료에 할 수 있는 기본작업 : 자료에 포함된 관측값들의 
#                       도수분포표 <- 종류별로 개수를 세는 것,
#                                     종류별로 비율을 구하는 것,
#                                     시각화는 막대/원 그래프를 사용
#
#
favorite <- c( 'WINTER', 'SUMMER', 'SPRING',
              'SUMMER', 'SUMMER', 'FALL',
              'FALL', 'SUMMER', 'SPRING', 'SPRING')
favorite

class( favorite )  # type
str( favorite )    # 내부 구조 
dim( favorite )    # data 수


#도수 분포표 작성
table( favorite )

# 도수 분포 비율 (0.0에서 1.0 사이)
table( favorite ) / length( favorite )

#시각화( 막대그래프)
ds <- table( favorite )   #ds-도수분포표
ds

class( ds )
str( ds )
dim( ds )

barplot( ds, main = 'favorite season')

ds.new <- ds[c( 2, 3, 1, 4 ) ]
ds.new
barplot( ds.new, main = 'favorite season' )

pie( ds, main = 'favorite season' )
pie( ds.new, main = 'favorite season' )

favorite.color <- c(2, 3, 2, 1, 1, 2, 2, 1, 3, 2, 1, 3, 2, 1, 2 )
ds <- table( favorite.color )
ds

barplot( ds, main = 'favorite season' )

colors <- c('green', 'red', 'blue' )
names( ds ) <-  colors;
ds
barplot( ds, main = 'favorite season', 
         col = colors )
pie( ds, main = 'favorite season', 
         col = colors )

# 2.4 단일 변수 연속형 자료 탐색

# 단일변수 연속형 자료 : 특성이 하나이면서 자료의 특성이 연속형인 자료, 연속형 자료는 
#                        관측값들이 크기를 가지므로 다양한 분석방법 존재
# 1. 평균(mean) : 하나의 값으로 전체를 대표할 수 있는 값. 이상값에 영향을 받는다.
# 2. 중앙값(median) : 자료의 값들을 크기순으로 정렬하였을 때 가장 중앙에 위치한 값
#                     이상값에 영향을 받지 않는다.
# 3. 절사평균() : 자료의 관측값들 중에서 작은 값들의 하위 n%와 큰 값의 상위 n%를 제외하고 중간에 있는
#                 나머지 값들만 가지고 평균을 계산하는 방식
# 4. 사분위수() : 주어진 자료에 있는 값들을 크기순으로 나열했을 떄, 4등분하는 지점에 있는 값
#                 1사분위수(Q1),2사분위수(Q2,중앙값과 동일),3사분위수(Q3)  
#                 전체 자료를 4개로 나누므로 4개 구간은 25%의 자료가 존재  (최소값 ~ 최대값)
# 5. 산포 : 주어진 자료에 있는 값들이 퍼져 있는 정도
#    분산 : 주어진 자료의 각각의 값이 평균으로부터 떨어져 있는 정도를 계산하여 합산한 후 값들의 개수로
#           나누어 계산
#   표준편차 : 분산의 제곱근(루트)으로 계산
#                                                     시각화는 히스토그램과 상자 그래프를 사용


weight <- c(60,62,64,65,68,69)
weight

weight.heavy <- c(weight,120)   # 이상치값 존재하므로 평균치가 정확하지 않음
weight.heavy

# 평균                           # 평균값은 차이가 크다 64, 72
mean(weight)
mean(weight.heavy)

# 중앙값                   # 중앙값은 거의 비슷함 64.5, 65
median(weight)
median(weight.heavy)

# 절사평균
mean(weight,trim = 0.2)           # 상,하위 20% 잘라낸 값들의 평균
mean(weight.heavy, trim = 0.2)

# 사분위수
quantile(weight.heavy)               # 최소값 ~ 최대값(0%,25%,50%,75%,100%)
quantile(weight.heavy,(0:10)/ 10)
# (0:10) / 10 : 구간을 몇개로 나눌것인지를 지정
# 0.1 ~ 1.0 사이 백분율로 10% ~ 100%
summary(weight.heavy)                      # 사분위수 + 중앙값 + 평균

# 산포
# 분산
var(weight)

# 표준편차
sd(weight)

# 값의 범위(최소값과 최대값)
range(weight)

# 최대값과 최소값의 차이
diff(range(weight))

# 연속형 자료 시각화
# Histogram : 연속형 자료의 분포를 시각화하는 도구            # 막대그래프와 비슷하지만, 서로 붙어있음.
#             연속형 자료에서의 구간을 나누고 구간에 속한       막대그래프와 혼동하지 않도록 해야함.
#             값들의 개수를 세는 방법으로 사용

class(cars)
str(cars)

dist <- cars[,2]
dist
boxplot.stats(dist) # 구체적인 값을 파악 할 때 사용
                    # status : 사분위수
                    # $n : 관측값의 수(데이터 수)
                    # $conf : 중앙값에 대한 신뢰구간
                    # $out : 특이값(이상치)목록

hist(dist, main = "Histogram for 제동거리",  # main : 제목, xlab : x축 이름, ylab :  y축 이름
     xlab = "제동거리",ylab = '빈도수',      # border : 바탕색, col : 본색
     border = 'brown', col='violet',           # las : x축 방향(1or2), breaks : 간격
     las=1,breaks=5)

# 상자 그림(boxplot, 상자 수영 그래프)
# 사분위수를 그래프형태로 시각화하는 도구
# 상자그래프는 하나의 그래프로 데이터의 분포
# 형태를 포함한 다양한 정보를 전달
# - 자료의 전반적인 분포를 이해하는데 도움
# - 구체적인 최소,최대,중앙값을 알기는 어렵다.

boxplot(dist,main = '자동차 제동거리 ')   # 박스 중간 굵은선 : 중앙값, 박스하단선 : 1사분위
                                          # 박스 상단선 : 3사분위, 맨위에 동그라미 : 특이값(개수마다 찍힘)
                                          # 구체적인 값은 알 수가 없다.

boxplot.stats(dist)
boxplot.stats(dist)$status
boxplot.stats(dist)$n
boxplot.stats(dist)$conf
boxplot.stats(dist)$out

# 일변량 연속형 데이터중 그룹으로 구성된 자료의 상자 그래프

boxplot(Petal.Length,Species, data = iris,
        main = '품종형 꽃잎 길이')
        
# 한 화면에 여러 그래프 작성

par( mfrow = c( 1, 3 ) )   # 1 x 3 가상화면 분할
barplot(table( mtcars$carb ), main = "C", xlab = 'carburetors', ylab = 'freq', col = 'blue' )
barplot(table( mtcars$cyl ), main = 'Cyl', xlab = 'cyl', ylab = 'freq', col = 'red' )
barplot( table( mtcars$gear ), main = 'g', xlab = 'gear', ylab = 'freq', col = 'green' )
par( mfrow = c( 1, 1 ) ) # 가상화면 분할 해제

# 2.1 다중변수 자료탐색
#
# - 다중변수(다변량) 자료는 변수가 2개 이상인 자료                                     # 2개의 변수는 이변량
# - 다중변수 자료는 2차원형태, matrix나 data frame에 저장하여 분석
# - 다중변수 자료에서 변수는 열(Column), 개별 관측값들이 행(row)으로 구성

# 산점도(scatter plot) : 2개의 변수로 구성된 자료의 분포를 알아보는 그래프.
#                       관측값들의 분포를 2개의 변수 사이의 관계를 파악할 수 있는기법
# - 산점도는 두 변수의 데이터 분포를 나타내는 것이기 때문에 두 개의 변수에 대한 자료가 필요
# - 산점도는 관측값들의 분포를 보면서 두 변수 사이의 관련성을 확인하는데 사용

str(mtcars)

# 두 변수(이변량)에 대한 산점도

wt <- mtcars$wt
wt
mpg <- mtcars$mpg
mpg

plot(wt,mpg,main="중량-연비 그래프",xlab="중량",ylab="연비(MPG)",col="red",pch=19) 

# plot() : 산점도 함수, pch : 그래프 상의 점의 모양
# 앞에 있는게 x축, 뒤에 있는게 y축    

plot(mtcars$wt,mtcars$mpg,main="중량-연비 그래프",xlab="중량",ylab="연비(MPG)",col="red",pch=19)

plot(mtcars[,c("wt","mpg")],main="중량-연비 그래프",xlab="중량",ylab="연비(MPG)",col="red",pch=19)

plot(mpg~wt,data=mtcars,main="중량-연비 그래프",xlab="중량",ylab="연비(MPG)",col="red",pch=19)  # 결과는 다 동일함(다른 방식)

# - pairs()는 여러 개의 변수에 대해 짝지어진 산점도 작성
# - 다중 산점도는 대각선을 기준으로 오른쪽 위의 산점도들과 왼쪽 아래의 산점도들이 대칭을 이룬다.
# (동일한 산점도인데 x축과 y축이 바뀌어 있다.)
# - 다중 산점도는 여러 변수들 간의 추세를 한눈에 파악할 수 있다.

# 2개 이상의 변수(다변량)에 대한 산점도

vars <- c("mpg","disp","drat","wt")
target <- mtcars[,vars]
head(target)

pairs(target,main="muiti plots") # 그래프들이 대칭형태(x,y축이 바뀐 형태들을 보여줌)

plot(target,main="muiti plots") # 결과는 pair와 plot이 같음.

# - 두 개의 변수에 대한 산점도를 작성할 때 그룹 정보를 알고 있다면 작성시 각 그룹별 관측값들에 대해 서로
#   다른 색과 점의 모양으로 표시할 수 있다. 두 변수 간의 관계뿐만 아니라 그룹 간의 관계도 파악 할 수 있다.

iris.2 <- iris[,3:4]
point <- as.numeric(iris$Species)
point

color <- c("red","green","blue")

plot(iris.2, main = "Iris plot", pch=c(point), col=color[point])

# y=wx + b ( w=기울기, b=절편) : 회귀식(직선의 방정식)

# 2.2 상관분석

# - 두 변수간의 관계를 분석시 추세의 모양이 선의 형태를 갖는 것을 선형적 관계라 표현한다.
# - 선형적 관계는 강한 선형적 관계가 있고 약한 선형적 관계까 있다.

# - 상관분석(correlation analysis) : 얼마나 선형성을 보이는지 수치상으로 나타내는 방법
# - 상관계수(correlation coefficient)는 선형성의 정도를 나타내는 척도

# - 상관계수 r의 성질

#   -1 <= r <= 1
#   r > 0 : 양의 상관계수(x가 증가하면 y도 증가)    
#   r < 0 : 음의 상관계수(x가 증가하면 y는 감소)
#   r이 1이나 -1에 가까울수록 x,y의 상관성이 높다.  (보통 0.5나 -0.5가 넘으면 상관관계가 높다고 본다.)

# - 상관계수 값이 1이나 -1에 가까울수록 관측값들의 분포가 직선에 가까워진다. 

beers <- c(5,2,9,8,3,7,3,5,3,5)                                 # 음주량
bal <- c(0.1,0.03,0.19,0.12,0.04,0.0095,0.07,0.06,0.02,0.05)    # 알코올 농도
tbl <- data.frame(beers,bal)

plot(bal~beers, data=tbl)                # 산점도 그리기               # 순서 중요
res <- lm(bal~beers, data=tbl)           # 회귀식 도출(y=wx+b)
abline(res)                              # 회귀선 그리기
cor(beers, bal)                          # 상관계수 계산      # 결론 : 양의 상관관계가 높다.
 
par(mfrow=c(1,2))
plot(wt~mpg, data=mtcars,main="중량-연비 그래프",xlab="중량",ylab="연비(mpg)",col="red",pch=19)
res <-  lm(wt~mpg, data=mtcars)
abline(res)

plot(drat~wt,data=mtcars,main="리어액슬기어비-중량 그래프",xlab="리어액슬기어비",
     ylab="중량",col="red",pch=19)
res <- lm(drat~wt, data=mtcars)
abline(res)
par(mfrow=c(1,1))

cor(mtcars$wt, mtcars$mpg)
cor(mtcars$drat,mtcars$wt)
cor(iris[,1:4])

# 시계열 자료(times series data) : 시간의 변화에 따라 자료를 수집한 경우

# 선그래프 : 다중변수 자료의 변수 중 하나가 연월일과 같이 시간을 나타내는 값을 갖는 경우
#            x축을 시간축으로 하여 시간의 변화에 따른 자료의 증감 추이를 확인할 때 사용

month <- 1:12
late <- c(5,8,7,9,4,6,12,13,8,6,6,4)
plot(month,                                   # x data
     late,                                    # y data
     main = "지각생 통계",                    # 제목
     type ="o",                               # 그래프 종류(l,b,s,o)
     lty = 1,                                 # 선의종류
     lwd = 1,                                 # 선의 굵기
     xlab = "Month",                          # x축 레이블
     ylab ="Late cnt")                        # y축 레이블

month <- 1:12
late1 <- c(5,8,7,9,4,6,12,13,8,6,6,4)
late2 <- c(4,6,5,8,7,8,10,11,6,5,7,3)
plot(month,                                   # x data
     late1,                                   # y data
     main = "지각생 통계",                    # 제목
     type ="o",                               # 그래프 종류(l,b,s,o)
     lty = 1,                                 # 선의종류
     lwd = 1,                                 # 선의 굵기
     col="red",
     ylim = c(1,15),                                           
     xlab="Month",                            # x축 레이블                                                                                                                                                                                                                                                                                                                                
     ylab="Late cnt")                         # y축 레이블
lines(month, late2, type = "o",col="blue")

# Big Data 분석과정

# 1. 문제정의
# 2. Data 수집
# 3. Data 전처리
# 4. 탐색적 Data 분석(EDA)
# 5. Data 분석(Data Model 구축)
# 6. 결과 보고서 작성

# 2.3 

# 1. 분석 대상 데이터셋 준비
# Boston Housing 데이터셋 활용
install.packages("mlbench")

library(mlbench)
data("BostonHousing")
myds <- BostonHousing[,c("crim","rm","dis","tax","medv")]

myds
class(myds)
dim(myds)
str(myds)
head(myds)

# 2. 필요한 변수 추가 - 선택적으로 수행

# crim : 지역 1인당 범죄율, rm : 주택 1가구당 방의 개수
# dis : 보스턴 5개 직업 센터까지 거리
# tax : 재산세율,mydv : 주택가격

grp <- c()
for(i in 1:nrow(myds)){
    if(myds$medv[i]>=25.0){
        grp[i] <- "H"
    }else if (myds$medv[i]<=17.0){
        grp[i] <- "L"
    }else{
        grp[i] <- "M"
    }
}
grp <- factor(grp)
grp <- factor(grp,levels=c("H","M","L"))

myds <- data.frame(myds,grp)

# 3. 데이터셋 형태와 기본적인 내용 파악
str(myds)
head(myds)
table(grp)

# 4.히스토그램을 이용한 관측값 분포 확인

par(mfrow=c(2,3))
for(i in 1:5){
    hist(myds[,i],main=colnames(myds)[i],
         col="yellow")
}
par(mfrow=c(1,1))

# 5. 상자 그래프에 의한 관측값 분포 확인

par(mfrow = c(2,3))
for (i in 1:5) {
    boxplot(myds[,i],main=colnames(myds)[i])
}
par(mfrow = c(1,1))

# 6. 그룹별 관측값 분포 확인

boxplot(myds$crim~myds$grp, main="1인당 범죄율")
boxplot(myds$rm~myds$grp,main="방의 개수")

# 7. 다중 산점도를 이용한 변수간 상관 관계 확인

pairs(myds[,-6])

# 8. 그룹 정보를 포함한 변수 간 상관관계 확인

point <- as.integer(myds$grp)
color <- c("red","green","blue")
pairs(myds[,-6],pch=point,col=color[point])

# 9. 변수 간 상관 계수 확인

cor(myds[ ,-6 ] )

# 실습 도로교통공단_시도_시군구별_월별_교통사고(2018)이용한 EDA 실습

# 시도,시군구,월,발생건수,사망자수,부상자수,중상,경상,부상신고 변수 9개
# 접근 하는법 : 시도를 먼저 나눈다. 지역에서 시군구로 또 나눈다.월로 나눈다.

# 1. 데이터 읽기
# 2. 시도,시군구,월이 facor로 읽힐 수도 있음. 그래서 문자로 형변환을 했음. (변수의 의미를 이해하는 것이 중요하다.)
# 3. 월은 문자여서 애매해서 월을 벡터로 만듦. 변수추가
# 4. 데이터 프레임에 month 추가
# 5. 분리하기 위해 조건판단함. unique 함수가 중복데이터 제거 시도 이름이 분리됨
# 6. 그 중에서 서울 데이터만 분리
# 7. 그 다음 구를 분리 인덱스 값 처리
# 8. 그 다음 월 분리 월별사고 계산
# 9. 구별 사고계산
# EDA의 절대적인 정답은 없지만, 다양한 관점에서 데이터를 접근하는 것이 중요하다.

#  7일차 (5/20)

# 2.1 데이터 전처리 이해

# 데이터 전처리(data preprocessing) : 초기에 확보한 데이터를 정제하고 가공해서 분석에 적합한 데이터를 확보하는 과정
# 데이터 전처리는 전체 분석 과정 중에서 매우 오랜 시간을 차지하기 때문에 이를 효과적으로 처리하는 방법을
# 알고 적용하는 것이 중요하다.

# 데이터 전처리 내용

# 1. 결측치 처리 - 값이 없는 경우(NA)
# 2. 특이값 정리 - 값은 있으나, 값이 문제에 맞지 않는 경우 (범위를 벗어남)
# 3. 데이터 가공 - 원본 data에는 없는 내용을 추가,변형 (필요에 따라 수행)

# 2.2 결측값 처리

# 결측치(결측값,missing value) : 데이터를 수집하고 저장하는 과정에서 저장할 값을 얻지 못하는 경우 발생
#                                R에서는 NA로 표기

# 결측치 종류
# 1. 완전 무작위 결측(MCAR,missing completely at random)
#   : 어떤 변수 상에 결측치가 관측된 또는 관측되지 않은 다른 변수와 아무 연관이 없는 경우
# 2. 무작위 결측(mar,mission at random) 
#   : 어떤 변수 상에 결측치가 관측된 다른 변수와 연관되어 있지만 그 자체의 비관측된 값들과는 연관이 없는 경우
# 3. 비 무작위 결측(NMAR, not mission at random) 
#   : 어떤 변수의 결측치가 완전 무작위 결측, 무작위 결측이 아니라며 비 무작위 결측에 해당
# 대부분 1,2번 경우 / 3번은 의도적으로 미기입한 경우

# 결측치 처리 방법
# 1. 결측치를 제거하거나 제외한 다음 데이터를 분석한다.
# 2. 결측치를 추정하여 적당한 값으로 치환한 후 데이터를 분석한다.

# 벡터(vector)에 대한 결측치 처리
# R에서는 결측치를 NA로 표기
# NA는 숫자형, 문자형, 논리형 값 어디에서나 결측치를 나타내는 용도로 사용

# 결측치 특성과 존재 여부 확인
z <- c(1,2,3,NA,5,NA,8)
sum(z)                         # NA가 하나라도 있으면 계산자체가 안됨
is.na(z)                       # NA 여부 확인
sum(is.na(z))                  # NA 개수 확인
sum(z,na.rm = TRUE)            # NA를 제외한 합계 계산

# 결측치 대체 및 제거
z1 <- c(1,2,3,NA,NA,8)
z2 <- c(5,8,1,NA,3,NA,7)
z1[is.na(z1)] <- 0                # NA를 0으로 대체
z1
z3 <- as.vector(na.omit(z2))      # NA를 제거하고 새로운 vector 생성  na.omit() : NA를 제거하는 함수
z3





