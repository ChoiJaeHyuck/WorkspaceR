# 최재혁, 5/19, 5/19

# 문제 1
# F F F M M F F F M M

# 1-1
gender <- c('F','F','F','M','M','F','F','F','M','M')
gender

# 1-2
gen1 <- table(gender)
gen1

# 1-3
barplot(gen1, main='gender')

# 1-4
pie(gen1, main = 'gender')

# 문제 2
# 여름 겨울 봄 가을 여름 가을 겨울 여름 여름 가을

# 2-1
season <- c('여름','겨울','봄','가을','여름','가을','겨울','여름','여름','가을')
season

# 2-2
sea1 <- table(season)
sea1

# 2-3
barplot(sea1, main='season')

# 2-4
pie(sea1, main='season')

# 문제 3
# KOR ENG ATH HIST SOC MUSIC BIO EARTH PHY ART
# 90  85  73   80  85   65   78   50   68  96

# 3-1
score <- c(90,85,73,80,85,65,78,50,68,96)
names(score) <-  c('KOR', 'ENG', 'ATH', 'HIST', 'SOC', 'MUSIC', 'BIO', 'EARTH', 
                   'PHY', 'ART')
score

# 3-2
score

# 3-3
mean(score)
median(score)

# 3-4
var(score)

# 3-5
which.max(score)

# 3-6
boxplot(score)
boxplot.stats(score)$out

# 3-7
hist(score, main = '학생 성적',xlab='성적',ylab='빈도수',col='purple')

# 문제 4
mtcars

# 4-1
mean(mtcars$wt);median(mtcars$wt);mean(mtcars$wt, trim = 0.15);sd(mtcars$wt)

# 4-2
summary(mtcars$wt)

# 4-3
cyl1 <- table(mtcars$cyl)
cyl1

# 4-4
barplot(cyl1, main='cylnder')

# 4-5
hist(mtcars$wt, main = 'WT', xlab='중량', ylab='빈도수')

# 4-6
boxplot(mtcars$wt);boxplot.stats(mtcars$wt)

# 4-7
boxplot(mtcars$disp);boxplot.stats(mtcars$disp)

# 4-8
?
    