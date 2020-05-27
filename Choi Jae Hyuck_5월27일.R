# 최재혁, 5월 27일 / 5월 27일

# 문제 1

state.x77
class(state.x77)
S <- data.frame(state.x77)
str(S)
head(S)
plot( Murder~Illiteracy, data = S )

# 종속(반응)변수~독립(설명)변수 순으로 지정
model <- lm( Murder~Illiteracy, S )
model 

abline( model )

coef( model )               # 매개변수( 계수 ) - W, b값
coef( model )[ 1 ]          # b값
coef( model )[ 2 ]          # W값

model2 <- data.frame( Illiteracy = c(0.5, 1.0, 1,5 ) )
predict( model, model2 )

# 문제 2

class(trees)
plot( Volume~Girth, trees )

treemodel <- lm( Volume~Girth, trees )
treemodel

abline( treemodel )

treemodel2 <- data.frame( Girth = c(8.5, 9.0, 9.5 ) )
predict( treemodel, treemodel2 )

# 문제 3

class(pressure)
plot( pressure~temperature, pressure )

premodel <- lm( pressure~temperature, pressure )
premodel

abline( premodel )

premodel2 <- data.frame( temperature = c(65, 95, 155 ) )
predict( premodel, premodel2 )
