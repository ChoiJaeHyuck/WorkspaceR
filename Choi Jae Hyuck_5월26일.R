# 최재혁 / 5월 26일 / 5월 26일

# 문제 1

library( KoNLP )     
useNIADic()    
library( wordcloud )
library( wordcloud2 )
library( RColorBrewer )
library( dplyr )
library( ggplot2 )

setwd( "C:\\Users\\USER\\Documents\\GitHub\\WorkspaceR\\Jae Hyuck Choi - wordcloud_problem" )

text1 <- readLines( 'ex_10-1.txt', encoding = 'UTF-8' )  
text1

text2 <- readLines( 'ex_10-2.txt', encoding = 'UTF-8' ) 
text2

text3 <- readLines( 'ex_10-3.txt', encoding = 'UTF-8' )
text3

buildDictionary( ext_dic = 'woorimalsam' )             # 한글 사전 우리말씀 로딩
pal2 <- brewer.pal( 8, 'Dark2' )

noun1 <-  sapply( text1, extractNoun, USE.NAMES = F )           # 명사 추출
noun1

noun2 <-  sapply( text2, extractNoun, USE.NAMES = F )           
noun2

noun3 <-  sapply( text3, extractNoun, USE.NAMES = F )           
noun3

noun1.1 <- unlist( noun1 )                                       # 추출한 명사의 빈도수 계산
wordcount1 <- table( noun1.1 )

noun2.1 <- unlist( noun2 )
wordcount2 <- table( noun2.1 )

noun3.1 <- unlist( noun3 )
wordcount3 <- table( noun3.1 )

sort.noun1 <- sort( wordcount1, decreasing = T)[ 1:10 ]          # 빈도수순으로 Sort( Descending )
sort.noun1                                                       
barplot( sort.noun1, names.arg = names( sort.noun1 ),
         col = 'steelblue', main = '빈도수 높은 단어',
         ylab = '단어 빈도수')

sort.noun2 <- sort( wordcount2, decreasing = T)[ 1:10 ]
sort.noun2                                                      
sort.noun2 <- sort.noun2[-1]
barplot( sort.noun2, names.arg = names( sort.noun2 ),
         col = 'steelblue', main = '빈도수 높은 단어',
         ylab = '단어 빈도수')

sort.noun3 <- sort( wordcount3, decreasing = T)[ 1:10 ]
sort.noun3                                                       
sort.noun3 <- sort.noun3[-1]
barplot( sort.noun3, names.arg = names( sort.noun3 ),
         col = 'steelblue', main = '빈도수 높은 단어',
         ylab = '단어 빈도수')
                                                            #한글 Word Cloud 작성

pal3 <- brewer.pal( 9, 'Purples' )[ 5:9 ]                   # 색상 팔레트 생성
wordcloud( names( wordcount1 ),                             # 단어
           freq = wordcount1,                               # 단어 빈도
           main.freq = 5,                                   # 단어 폰트 크기(최대,최소)
           random.order = F,                                # 단어 최소 빈도
           rot.per = .1,                                    # 90도 회전 단어 비율
           colors = pal3 )                                  # 단어색

wordcloud( names( wordcount2 ),                            
           freq = wordcount2,                             
           main.freq = 5,                                 
           random.order = F,                              
           rot.per = .1,                                  
           colors = pal3 )

wordcloud( names( wordcount3 ),                           
           freq = wordcount3,                             
           main.freq = 5,                                 
           random.order = F,                              
           rot.per = .1,                                 
           colors = pal3 ) 



noun1.1 <- noun1.1[ nchar( noun1.1 ) > 1 ]                    # 불필요한 단어 삭제
noun2.1 <- noun2.1[ nchar( noun2.1 ) > 1 ]
noun3.1 <- noun3.1[ nchar( noun3.1 ) > 1 ]

noun1.1 <- gsub( '들이','', noun1.1 )
noun1.1 <- gsub( '대한','', noun1.1 )
noun1.1 <- gsub( '그동안','', noun1.1 )

noun2.1 <- gsub( '들이','', noun2.1 )
noun2.1 <- gsub( '하기','', noun2.1 )
noun2.1 <- gsub( '경우','', noun2.1 )

noun3.1 <- gsub( '하면','', noun3.1 )
noun3.1 <- gsub( '이번','', noun3.1 )
noun3.1 <- gsub( '동안','', noun3.1 )
noun3.1 <- gsub( '병우','', noun3.1 )

wordcount1 <- table( noun1.1 )
wordcount2 <- table( noun2.1 )
wordcount3 <- table( noun3.1 )


wordcloud( names( wordcount1 ), freq = wordcount1,
           scale = c( 6, 0.7 ), main.freq = 3,
           random.order = F, rot.per = .1, colors = pal3 )

wordcloud( names( wordcount2 ), freq = wordcount2,
           scale = c( 6, 0.7 ), main.freq = 3,
           random.order = F, rot.per = .1, colors = pal3 )

wordcloud( names( wordcount3 ), freq = wordcount3,
           scale = c( 6, 0.7 ), main.freq = 3,
           random.order = F, rot.per = .1, colors = pal3 )


# 문제 2

text4 <-  readLines('ex_10-4.txt', encoding = 'UTF-8')
text4

noun4 <- sapply(text4, extractNoun, USE.NAMES = F)  
noun4

noun4.1 <- unlist(noun4)           

noun4.1 <- noun4.1[nchar(noun4.1)>1]   

wordcount4<- table(noun4.1)

sort.noun4 <- sort(wordcount4, decreasing = T)[1:10]
sort.noun4
sort.noun4 <- sort.noun1[-11]  # 11번째가 공백임


wordcloud2(wordcount4,
           color = 'random-light',size = 1)

# 문제 3


text5 <- readLines('ex_10-5.txt', encoding = 'UTF-8')
text5

noun5 <- sapply(text5, extractNoun, USE.NAMES = F)  
noun5

noun5.1 <- unlist(noun5)            

noun5.1 <- noun5.1[nchar(noun5.1)>1]   
noun5.1

wordcount5<- table(noun5.1)

sort.noun5 <- sort(wordcount5, decreasing = T)[1:10]
sort.noun5

wordcloud2(wordcount5,
           color = 'random-light',size = 1.6, shape='circle')
