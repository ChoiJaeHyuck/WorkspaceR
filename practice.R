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

class( favorite )  #type
str( favorite )    #내부 구조 
dim( favorite )    #data 수


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