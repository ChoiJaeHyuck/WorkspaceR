# 1. 주제 선정 및 조사 개요


# 문제정의 : 치킨전문점 창업 전략

# 치킨전문점의 성공적인 창업을 위해 치킨전문점의 무분별한 진입을 방지하고 
# 경영개선을 유도하기 위해 필요한 데이터 정보를 제공


# 조사 배경

# 우리나라 사람들의 치킨 사랑은 이루 말로 다 할 수 없을 정도입니다. 이에 따라 치킨집도 우후죽순으로 늘어나고 있습니다. 
# 특히 퇴직자들에게 치킨집은 은퇴 후 한 번쯤 고려해보는 필수 사업 아이템입니다. 
# 2019년 2월 기준 지방행정 인허가 자료를 보면 전국에서 영업 중인 치킨집은 8만 7,000곳으로 조사되었습니다. 
# 맥도날드 가맹점이 2017년 기준 약 3만 4,000개임을 감안하면 많은 수입니다.
# 치킨집 창업의 가장 큰 장점은 적은 창업 비용입니다. 한 증권사에서 조사한 자영업 분석 보고서에 따르면 치킨집 창업 비용은 
# 평균 약 5,700만 원으로 약 1억 1,000만 원인 커피숍의 절반 정도입니다. 평균비용이기 때문에 지역에 따라, 가게 크기에 따라,
# 카페형, 배달 전문형 같은 유형에 따라 비용이 천차만별로 달라질 수는 있습니다. 두 번째 장점은 치킨은 확실한 사업 아이템이라는 점입니다. 
# 2018년 국내 외식 트렌드 조사에 따르면 응답자의 절반 이상이 치킨을 선호하는 것으로 나타났습니다.
# 하지만 치킨의 창업 매장보다 폐업 매장이 더 많은 것이 현실입니다. 자영업 분석 보고서에 따르면 치킨집의 창업 수와 폐업 수가 있는데 
# 2018년 기준 창업 매장 수는 6,200개, 폐업 매장 수는 8,400개입니다. 2018년 치킨집 폐업율은 10.0 입니다. 한 해에 10곳 중 1곳이 치킨집 
# 사업을 접고 있습니다. 경쟁이 심한 만큼 폐업을 하는 매장도 많은 상황입니다.
# 따라서 상기의 장단점의 이유를 바탕으로 변수를 지정하여 어떻게 하면 치킨전문점의 창업을 성공적으로 할 수 있는지에 대해 분석 하였습니다.




# 2. 데이터 전 처리 




# 2-1. Excel 파일 읽기 및 데이터 확인


library( rJava )      # EDA에 필요한 패키지들 로드하기
library( xlsx )
library( mlbench )
library( dplyr )
library( ggplot2 )
library( gridExtra )
library( RColorBrewer )
library( corrplot )
library( KoNLP )
library( multilinguer )
library( wordcloud )
library( wordcloud2 )
library( brew )


setwd("C:\\Workspace\\WorkspaceR")                  # 주 활용 data
chicken.xlsx <- read.xlsx( file = "chicken.xlsx",           
                           sheetIndex = 1,
                           encoding = "UTF-8" )

setwd("C:\\Workspace\\workspaceR")                # 성별원그래프 비율 data
gender <- read.xlsx( file = "성별.xlsx",           
                     sheetIndex = 1,
                     encoding = "UTF-8" )
gender
      
setwd("C:\\Workspace\\workspaceR")                 # 프랜차이즈 비율 data
franchising <- read.xlsx( file = "franchise.xlsx",           
                        sheetIndex = 1,
                        encoding = "UTF-8" )

setwd("C:\\Workspace\\workspaceR")                  # 나이 비율 data
age <- read.xlsx( file = "나이.xlsx",           
                  sheetIndex = 1,
                  encoding = "UTF-8" )

setwd("C:\\Workspace\\workspaceR")                  # 치킨전문점 업종전환이유 data         
reason <- read.xlsx( file = "업종전환이유.xlsx",           
                     sheetIndex = 1,
                     encoding = "UTF-8" )
reason


setwd("C:\\Workspace\\workspaceR")                     # 서울치킨집수 data         
seoul.xlsx <- read.xlsx( file = "서울치킨집수.xlsx",           
                     sheetIndex = 1,
                     encoding = "UTF-8" )
seoul.xlsx


setwd("C:\\Workspace\\workspaceR")                               #서울특별시 10대20대 여성고객 치킨통화량 수                                     
치킨통화량.xlsx <- read.xlsx( file = "서울6월치킨통화량.xlsx",           
                         sheetIndex = 1,
                         encoding = "UTF-8" )
치킨통화량.xlsx



class(chicken.xlsx);class(gender);class(franchising);class(age);class(reason);class(seoul.xlsx);class(치킨통화량.xlsx)
dim(chicken.xlsx);dim(gender);dim(franchising);dim(age);dim(reason);dim(seoul.xlsx);dim(치킨통화량.xlsx)
str(chicken.xlsx);str(gender);str(franchising);str(age);str(reason);str(seoul.xlsx);str(치킨통화량.xlsx)


# 저희 조는 주제에 적합한 데이터를 활용하기 위해, 7개의 xlsx형식의 파일을 새롭게 제작하였습니다.
# 그리고 그 데이터는 '통계청' 및 '2019년 외식산업경기전망지수 종합보고서.pdf', 2019 국내 외식트렌드 조사 보고서.pdf, 
# 2019 식품외식산업 주요통계.pdf,'SKT 데이터 허브', '소상공인 상권정보시스템' 등에서 수집하였습니다.
# 그리고 각각의 파일들의 기본 정보를 class, str, dim 함수를 이용하여 확인하였습니다. 확인 결과 7개 xlsx형식의 파일
# ('chicken.xlsx', 'gender', 'franchising', 'age', 'reason', 'seoul.xlsx', '치킨통화량.xlsx' 모두 data.frame 이었고, 
# 행(관측치)과 열(변수)은 각각 '8행 18열', '2행 2열', '2행 2열', '3행 2열', '4행 2열', '25행 2열', '25행 2열' 이었습니다.



# 2-2. 변수 지정 


industry <- c("한식","중식","일식","서양식","기타외국식","피자햄버거","치킨전문점","김밥및간이음식점")
visit<- chicken.xlsx %>% select(업종, 평균방문고객수1일)
delivery <- chicken.xlsx %>% select(업종, 평균배달수1일)
takeout <- chicken.xlsx %>% select(업종, 평균테이크아웃수1일)
margin <- chicken.xlsx %>% select(업종, 매출액대비영업이익률2018)
sales <- chicken.xlsx %>% select(업종, 월평균매출액)
change <- chicken.xlsx %>% select(업종,업종전환경험여부)
salesdown <- chicken.xlsx %>% select(업종,전환이유영업이익감소)
compete <- chicken.xlsx %>% select(업종,전환이유동종업종경쟁)
delivery_app <- chicken.xlsx %>% select(업종,배달앱이용비율)
all_business <- chicken.xlsx %>% select(업종,전국사업체수2018)
franchise<- chicken.xlsx %>% select(업종,프랜차이즈가게비율)
male <- chicken.xlsx %>% select(업종,남성고객)
female <- chicken.xlsx %>% select(업종,여성고객)
young <- chicken.xlsx %>% select(업종,고객10_20대)
middle <- chicken.xlsx %>% select(업종,고객30_40대)
old <- chicken.xlsx %>% select(업종,고객50대이상)
expenditure <- chicken.xlsx %>% select(업종,배달외식평균지출비용)
expert <- seoul.xlsx %>% select(지역구,치킨전문점수)


# 저희조가 선정한 18개의 변수(chicken.xlsx파일 중)는 치킨 전문점이 배달을 위주로 영업을 한다는 점에 착안하여 치킨 전문점과 경쟁 업종인 
# 한식, 중식, 일식, 서양식,기타외국식,피자햄버거, 김밥및간이음식점과의 유의미한 비교를 목적으로 선택하였습니다.
# 주요 소비자들의 성별 및 연령대를 분석하여 치킨 전문점의 수익 증대에 도움을 줄 수 있는 정보를 제공하고자 노력하였습니다.

# 변수에 대해 설명하겠습니다. ( 7개 파일 )
# 먼저 chicken.xlsx 파일의 변수 중의 업종 중에서 일반 음식점업은 각종의 정식류를 조리하여 제공하는 산업활동으로서 한식과 일식, 중식, 서양식 
# 및 기타 외국 음식점업을 운영하는 산업활동을 말합니다. 
# 피자, 햄버거, 샌드위치 및 유사 음식점업은	피자, 햄버거, 샌드위치, 토스트 및 유사 음식을 직접 조리하여 일반소비자에게 판매하는 산업활동을 말합니다.
# 분식 및 김밥 전문점은 김밥, 만두, 찐빵, 라면, 떡볶이 등의 간이음식을 조리하여 제공하는 음식점을 운영하는 산업활동을 말합니다.
# 치킨전문점은양념치킨, 프라이드치킨 등 치킨 전문점을 운영하는 산업활동을 말합니다.

# 1일 평균 방문 고객수는 각 업종에 하루동안 얼마나 많은 사람들이 방문한 수를 평균으로 나타낸 것입니다.
# 1일 평균 배달수는 각 업종에 하루동안 얼마나 많은 배달을 하였는지 평균으로 나타낸 것입니다.
# 1일 평균 테이크 아웃수는 각 업종에 하루 동안 얼마나 많은 테이크 아웃을 하였는지 평균으로 나타낸 것입니다.
# 2018 매출액대비 영업이익률은 기업의 주된 영업활동에 의한 경영성과를 판단하기 위한 지표로서 제조 및 판매활동과 직접 관계가 없는 
# 영업외손익을 제외한 순수한 영업이익만을 매출액과 대비한 것으로 판매 마진을 나타낸다고 볼 수 있습니다.
# 월평균매출액 기업의 주요 영업활동 또는 경상적 활동으로부터 얻는 수익으로서 상품 등의 판매 또는 용역의 제공으로 실현된 월평균 금액을 말합니다.
# 업종전환경험여부는 업종을 다른 업종으로 전환한 경험을 얼마나 하였는지를 표현한 것입니다. 
# 전환이유동종업종경쟁은 업종 전환의 이유가 동종업종경쟁으로 인해 발생하였다는 것을 의미합니다.
# 전환이유영업이익감소는 업종 전환의 이유가 영업이익감소로로 인해 발생하였다는 것을 의미합니다.
# 배달앱 이용 비율은 각 업종에서 배달앱을 이용하는 비율입니다.

# 2018 전국 사업체 수는 2018년도 전국의 지역별 사업체의 규모 및 분포를 파악한 것입니다.
# 프랜차이즈가게 비율은 프랜차이즈 방식으로 벌이는 사업. 또는 그와 관련한 사업의 가맹점 비율입니다.
# 남성고객은 각 업종을 남성들이 이용한 비율입니다.
# 여성고객은 각 업종을 여성들이 이용한 비율입니다.
# 고객 10대~20대는 각 업종을 10대~20대 고객이 이용한 비율입니다.
# 고객 30대~40대는 각 업종을 30대~40대 고객이 이용한 비율입니다.
# 고객 50대 이상은 각 업종을 50대 이상의 고객이 이용한 비율입니다.


# 2-3. 결측치, 특이값 확인 


sum(is.na(chicken.xlsx))      # 결측치 0
sum(is.na(gender))            # 결측치 0                                     
sum(is.na(franchising))       # 결측치 0
sum(is.na(age))               # 결측치 0
sum(is.na(reason))            # 결측치 0
sum(is.na(seoul.xlsx))        # 결측치 0
sum(is.na(치킨통화량.xlsx))   # 결측치 0

boxplot.stats(chicken.xlsx$평균방문고객수1일)$out                   # 특이값 0 
boxplot.stats(chicken.xlsx$평균배달수1일)$out                       # 특이값 1개( 69.7 ) 
boxplot.stats(chicken.xlsx$평균테이크아웃수1일)$out                 # 특이값 0
boxplot.stats(chicken.xlsx$매출액대비영업이익률2018)$out            # 특이값 0
boxplot.stats(chicken.xlsx$월평균매출액)$out                        # 특이값 0
boxplot.stats(chicken.xlsx$업종전환경험여부)$out                    # 특이값 0
boxplot.stats(chicken.xlsx$전환이유영업이익감소)$out                # 특이값 0
boxplot.stats(chicken.xlsx$전환이유동종업종경쟁)$out                # 특이값 0
boxplot.stats(chicken.xlsx$배달앱이용비율)$out                      # 특이값 0
boxplot.stats(chicken.xlsx$배달대행이용비율)$out                    # 특이값 0
boxplot.stats(chicken.xlsx$프랜차이즈가게비율)$out                  # 특이값 0
boxplot.stats(chicken.xlsx$전국사업체수2018)$out                    # 특이값 1개( 313562 )
boxplot.stats(chicken.xlsx$남성고객)$out                            # 특이값 0
boxplot.stats(chicken.xlsx$여성고객)$out                            # 특이값 0
boxplot.stats(chicken.xlsx$고객10_20대)$out                         # 특이값 0
boxplot.stats(chicken.xlsx$고객30_40대)$out                         # 특이값 0
boxplot.stats(chicken.xlsx$고객50대이상)$out                        # 특이값 0
boxplot.stats(chicken.xlsx$배달외식평균지출비용)$out                # 특이값 0
boxplot.stats(gender$비율)$out                                      # 특이값 0
boxplot.stats(franchising$비율)$out                                 # 특이값 0
boxplot.stats(age$비율)$out                                         # 특이값 0
boxplot.stats(reason$비율)$out                                      # 특이값 0
boxplot.stats(seoul.xlsx$치킨전문점수)$out                          # 특이값 1개( 357 )
boxplot.stats(치킨통화량.xlsx$총통화량)$out                         # 특이값 0

# 변수별로 결측치나 특이값을 확인하기 위해 boxplo.stats함수를 이용하였습니다. 
# 어떠한 파일의 변수에서도 결측치는 발견되지 않았고, chicken.xlsx 파일의 변수 평균배달수1일 과 전국사업체수2018에서
# 특이값이 각각 1개씩( 69.7, 131562 ) 발견되었습니다. 그리고 seoul.xlsx 파일의 변수 치킨전문점수 에서도 특이값이 1개( 357 ) 
# 발견되었습니다.3개 특이값의 수치가 논리적으로 판단했을 때, 일반적인 범위를 넘어서지 않았기 때문에 EDA에 포함하기로 하였습니다.


bd <- ggplot( delivery, aes( y = 평균배달수1일 ) ) +                       
    geom_boxplot( fill = "#FF6666" )


# 결측치가 발견된 변수 평균배달수1일을 ggplot함수를 사용하여 상자수염그래프를 만들겠습니다.


bb <- ggplot( all_business, aes( y = 전국사업체수2018 ) ) +                       
    geom_boxplot( fill = "#33CCFF" )


# 결측치가 발견된 변수 전국사업체수2018을 ggplot함수를 사용하여 상자수염 그래프를 만들겠습니다.

bs <- ggplot( expert, aes( y = 치킨전문점수 ) ) +                       
  geom_boxplot( fill = "#00CC66" )


# 결측치가 발견된 변수 치킨전문점수를 ggplot함수를 사용하여 상자수염 그래프를 만들겠습니다.


grid.arrange(bd, bb, bs, ncol=3)


# chicken.xlsx 파일의 평균배달수1일과 전국사업체수2018, seoul.xlsx 파일의 치킨전문점수의 특이값을
# 상자수염그래프로 한 화면에 표현하기 위해 grid.arrange함수를 사용하겠습니다. 3가지의 특이값 모두
# 앞서 언급한 바와 같이 논리적으로 판단하였을 때, 충분히 존재할 수 있는 수치라고 생각했기 때문에 
# EDA 과정에 포함시켰습니다.




# 3. EDA( 탐색적 데이터분석 ) 




# 3-1.변수 시각화 


# 저희 조는 치킨전문점의 창업전략 방법으로 선정한 변수들 각각의 데이터를 막대그래프와 원그래프를 이용하여 시각화하였습니다.


# 전국사업체수2018 ( 막대그래프 )


k <- ggplot(chicken.xlsx , aes(x = 업종, y = 전국사업체수2018 )) +    
    geom_bar(stat="identity", width = 0.9, aes(fill=업종)) + 
    labs(x = " 업종 ", y= " 2018전국사업체수 ", position = "dodge" )+
    ggtitle( " 업종별 2018 전국사업체수 " ) + 
    geom_text(aes(label= round(전국사업체수2018,2)),position = position_dodge(width=1.8), vjust=1.5) +
    theme(legend.position = "bottom", plot.title = element_text(hjust=0.5, size=18, face="bold",  colour = "gray30"))    

k


# 2018년 업종별 전국사업체수를 한눈에 쉽게 파악하기 위해 ggplot함수를 써서 
# 막대그래프로 표현했습니다. 그결과 한식의 전국사업체수가 가장 높았고, 기타 외국식의 전국사업체수가 가장 낮았습니다.
# 그중 치킨 전문점은 한식과 김밥 및 간이 음식점 다음으로 높았습니다.


# 치킨집의 프랜차이즈가게비율 ( 원그래프 )


franchising
per <- c(68.8,31.2)

fra <- ggplot(franchising, aes(x = "", y = 비율, fill = 프랜차이즈여부)) + 
    geom_bar(width = 1, stat = "identity", color = "white") +
    coord_polar("y") +
    geom_text(aes(label = paste0(per,"%")), 
              position = position_stack(vjust = 0.5)) +
    theme_void()

fra


# 2018년 업종별 전국 사업체수의 3위였던 치킨 전문점을 프랜차이즈와 비프랜차이즈로 나누었습니다.
# 그래프를 살펴보면 프랜차이즈 비율이 비프랜차이즈 비율보다 크다는 것을 알 수 있습니다. 


grid.arrange(k, fra, nrow=2)  


# 두 변수를 나타내어 치킨 전문점은 전체 사업체수가 3위를 기록하고 보통 프랜차이즈를 선호한다는 것을 알 수 있습니다.


# 평균방문고객수1일 ( 막대그래프 )


a <- ggplot(chicken.xlsx , aes(x = 업종, y = 평균방문고객수1일 )) +    
    geom_bar(stat="identity", width = 0.9, aes(fill=업종)) + 
    labs(x = " 업종 ", y= " 평균방문고객수1일 ", position = "dodge" )+
    ggtitle( " 업종별 1일 평균방문고객수 " ) + 
    geom_text(aes(label= round(평균방문고객수1일,2)),position = position_dodge(width=1.8), vjust=1.5) +
    theme(legend.position = "bottom", plot.title = element_text(hjust=0.5, size=18, face="bold",  colour = "gray30"))    

a


# 각 업종별로 하루동안의 평균방문 고객 수를 쉽게 보기 위해 ggplot함수를 이용해서 막대그래프
# 를 그렸다. 그결과, 고객들이 평균적으로 기타외국식 음식점에 가장 많이 방문하고 치킨전문점은
# 유달리 적게 방문한다는 사실을 발견할 수 있습니다. 따라서 치킨전문점의 매장을 넓히는 것은 회피해야 합니다. 


# 평균테이크아웃수1일 ( 막대그래프 )


c <- ggplot(chicken.xlsx , aes(x = 업종, y = 평균테이크아웃수1일 )) +    
    geom_bar(stat="identity", width = 0.9, aes(fill=업종)) + 
    labs(x = " 업종 ", y= " 평균테이크아웃수1일 ", position = "dodge" )+
    ggtitle( " 업종별 1일 평균테이크아웃수 " ) + 
    geom_text(aes(label= round(평균테이크아웃수1일,2)),position = position_dodge(width=1.8), vjust=1.5) +
    theme(legend.position = "bottom", plot.title = element_text(hjust=0.5, size=18, face="bold",  colour = "gray30"))    

c


# 각 업종별로 하루동안의 평균 테이크아웃 수를 쉽게 보기위해 ggplot함수를 이용해서 막대그래프를 그렸습니다. 
# 그 결과, 한식을 주로 이용하고 간편하게 먹을 수 있는 패스트푸드를 선호 하며, 
# 치킨은 그 외의 업종 중에 선호하는 것을 알 수 있습니다.


# 평균배달수1일 ( 막대그래프 )


b <- ggplot(chicken.xlsx , aes(x = 업종, y = 평균배달수1일 )) +    
    geom_bar(stat="identity", width = 0.9, aes(fill=업종)) + 
    labs(x = " 업종 ", y= " 평균배달수1일 ", position = "dodge" )+
    ggtitle( " 업종별 1일 평균배달수 " ) + 
    geom_text(aes(label= round(평균배달수1일,2)),position = position_dodge(width=1.8), vjust=1.5) +
    theme(legend.position = "bottom", plot.title = element_text(hjust=0.5, size=18, face="bold",  colour = "gray30"))    

b


# 각 업종별로 하루동안의 평균배달 수를 쉽게 보기 위해 ggplot함수를 이용해서 막대그래프를 그렸습니다. 
# 그 결과, 평균적으로 중식의 배달수가 유달리 높았고 기타외국식음식점의 배달수가 가장 낮은것을 볼수있습니다.
# 치킨 전문점의 경우 중식보단 비율이 다소 낮지만 방문과 포장에 비하면 월등이 높다는 사실을 알 수 있습니다.


grid.arrange(a, b, c, ncol=3)              # ggplot 분할 화면


# 평균방문고객수1일,평균배달수1일,평균테이크아웃수1일을 한 화면에서 막대그래프로 비교해보기 위해 gird.arragne함수를 썼습니다.
# 종합하여 나타내 보면 치킨 전문점은 평균 방문고객과 평균 테이크아웃수가 평균 배달수 보다 낮기 때문에 굳이 목 좋은 장소에 점포를 
# 얻을 필요가 없으며, 인테리어에 큰 투자없이 주방만 잘 갖추면 창업하는데 도움이 될 수 있습니다.


# 배달앱이용비율 ( 원그래프 )


delivery_app$배달앱이용비율 <- round(delivery_app$배달앱이용비율/199.9,3)
delivery_app$배달앱이용비율
pie(delivery_app$배달앱이용비율,
    labels=delivery_app$배달앱이용비율)
i <- ggplot(delivery_app,aes(x="",y=배달앱이용비율,fill=업종))+
    geom_bar(width=1,stat="identity",color = "white" )+
    coord_polar("y")+
    geom_text(aes(label=paste0(round(배달앱이용비율*100,1),"%")),
              position=position_stack(vjust=0.5)) + 
    scale_fill_manual(values = c("#FF6666","#FF9933","#669900","#00CC66","#00CCCC","#33CCFF","#CC99FF","#FF66CC")) +
    theme_void()

i


# 업종별로 배달앱 이용 비율을 표현하기 위해 ggplot함수를 이용하여 원그래프를 그려보았습니다. 그결과 치킨전문점이
# 가장많이 배달앱을 이용한다는 것을 알수있었고 한식전문점이 가장적게 배달앱을 이용한다는 것을 알 수 있었습니다.


# 배달외식평균지출비용 ( 막대그래프 )


r <- ggplot(chicken.xlsx , aes(x = 업종, y = 배달외식평균지출비용 )) +    
    geom_bar(stat="identity", width = 0.9, aes(fill=업종)) + 
    labs(x = " 업종 ", y= " 배달외식평균지출비용 ", position = "dodge" )+
    ggtitle( " 업종별 배달외식 평균 지출비용 " ) + 
    geom_text(aes(label= round(배달외식평균지출비용,2)),position = position_dodge(width=1.8), vjust=1.5) +
    theme(legend.position = "bottom", plot.title = element_text(hjust=0.5, size=18, face="bold",  colour = "gray30"))    

r


# 2018년 업종별 배달 외식 평균 지출 비용의 비율을 한눈에 쉽게 파악하기 위해 ggplot함수를 써서 막대그래프로 표현했습니다. 
# 그 결과 업종별 배달 외식 평균 지출 비용의 비율은 서양식이 가장 높았고, 업종별 배달 외식 평균 지출 비용의 비율 중 
# 김밥 및 간이음식점이 가장 낮았습니다. 치킨전문업이 평균 배달 외식 지출비용에서 1위인 서양식과 차이가 나지 않는 모습을 볼 수 있습니다.


# 매출액대비영업이익률2018 ( 막대그래프 )


d <- ggplot(chicken.xlsx , aes(x = 업종, y = 매출액대비영업이익률2018 )) +    
    geom_bar(stat="identity", width = 0.9, aes(fill=업종)) + 
    labs(x = " 업종 ", y= " 매출액대비영업이익률2018 ", position = "dodge" )+
    ggtitle( " 업종별 매출액대비영업이익률2018 " ) + 
    geom_text(aes(label= round(매출액대비영업이익률2018,2)),position = position_dodge(width=1.8), vjust=1.5) +
    theme(legend.position = "bottom", plot.title = element_text(hjust=0.5, size=18, face="bold",  colour = "gray30"))    

d


# 2018년 업종별 매출액 대비 영업이익률를 한눈에 쉽게 파악하기 위해 ggplot함수를 써서 막대그래프로 표현했습니다.
# 그결과 서양식음식점의 영업이익률이 가장 높았고, 한식의 영업이익률이 가장 낮았습니다.


# 월평균매출액 ( 막대그래프 )


e <- ggplot(chicken.xlsx , aes(x = 업종, y = 월평균매출액 )) +    
    geom_bar(stat="identity", width = 0.9, aes(fill=업종)) + 
    labs(x = " 업종 ", y= " 월평균매출액 ", position = "dodge" )+
    ggtitle( " 업종별 월평균매출액 " ) + 
    geom_text(aes(label= round(월평균매출액,2)),position = position_dodge(width=1.8), vjust=1.5) +
    theme(legend.position = "bottom", plot.title = element_text(hjust=0.5, size=18, face="bold",  colour = "gray30"))    

e


# 업종별 월 평균 매출액을 한눈에 쉽게 파악하기 위해 ggplot함수를 써서 막대그래프로 표현했습니다. 
# 그 결과 일식의 월 평균 매출액이 가장 높았고, 김밥및 간이음식점의 월 평균 매출액이 가장 낮았습니다.
# 치킨전문점은 다른 업종에 비해 월평균 매출액은 낮으나 보통 수준은 유지하고 있습니다.


grid.arrange( d, e, r, ncol=3)  


# 2018년 업종별 매출액 대비 영업이익률과 업종별 월 평균 매출액의 막대그래프를 한 화면에 표현하기 위해 grid.arrange 함수를 이용했습니다.
# 치킨전문점의 매출액 대비 영업이익률이 낮기때문에 이익률을 높이도록 사이드 메뉴를 준비해야합니다.  


# 업종전환경험여부 ( 원그래프 )


change$업종전환경험여부 <- round(change$업종전환경험여부/95.1,3)
change$업종전환경험여부
pie(change$업종전환경험여부,
    labels=change$업종전환경험여부)
f <- ggplot(change,aes(x="",y=업종전환경험여부,fill=업종))+
    geom_bar(width=1,stat="identity",color = "white" )+
    coord_polar("y")+
    geom_text(aes(label=paste0(round(업종전환경험여부*100,1),"%")),
              position=position_stack(vjust=0.5)) + 
    scale_fill_manual(values = c("#FF6666","#FF9933","#669900","#00CC66","#00CCCC","#33CCFF","#CC99FF","#FF66CC")) +
    theme_void()

f


# 각 업종별로 업종전환경험여부를 알아보기 위해 pie함수를 이용해서 원그래프를 그려보았습니다.
# 그 결과 기타외국식 음식점을 운영하는 사장님들이 가장 많이 업종전환을 경험하였고 중식음식점을 운영하는 사장님들이
# 가장 적게 업종전환경험을 한것을 볼수있었습니다.
# 치킨 전문점은 다소 상위에 위치하나 낮은 비율과 비슷한 양상을 보입니다.


# 치킨전문점 사장님의 업종전환 이유


per5 <- c(34.3,29.8,11,24.98)

cha <- ggplot(reason, aes(x = "", y = 비율, fill = 이유)) + 
  geom_bar(width = 1, stat = "identity", color = "white") +
  coord_polar("y") +
  geom_text(aes(label = paste0(per5,"%")), 
            position = position_stack(vjust = 0.5)) +
  theme_void()

cha


# 치킨전문점의 업종전환 이유는 닭의 단가가 점점 올라가고 배달비가 생기는 등 영업이익의 감소가 일어났고, 같은 업계와의
# 경쟁 또한 심화되었기 때문입니다.


grid.arrange( f, cha, nrow=2)  


# 업종변환 경험 여부와 치킨전문점 사장님의 업종전환 이유를 원그래프를 한 화면에 표현하기 위해 grid.arrange 함수를 이용했습니다.
# 치킨전문점의 경우 업종전환의 경험이 3번째로 높지만 기타 외국식을 제외하면 비슷한 양상을 보입니다.
# 치킨전문점의 업종전환 이유는 여러가지 가있는데 영업이익 감소, 동종업종의 경쟁, 구인의 어려움이 있었습니다.
# 따라서 치킨전문점 창업을 준비하는 창업주들은 창업할 때, 영업이익감소와 동종업종경쟁의 부분을 고려해야 할 것입니다.


# 치킨집을 이용하는 남,여 성별비율 ( 원그래프 )


per2 <- c(54.1,45.9)
gen <- ggplot(gender, aes(x = "", y = 비율, fill = 성별)) + 
    geom_bar(width = 1, stat = "identity", color = "white") +
    coord_polar("y") +
    geom_text(aes(label = paste0(per2,"%")), 
              position = position_stack(vjust = 0.5)) +
    theme_void()

gen


# 치킨전문점을 이용하는 성별 비율은 여성이 남성보다 다소 높습니다. 그러나 유의미한 차이는 아니므로
# 여성과 남성 모두를 고려해야 할 것입니다.


# 치킨집을 이용하는 사람들의 나이비율( 원그래프 )


per3 <- c(22.2,64,13.8)
sas <- ggplot(age, aes(x = "", y = 비율, fill =나이)) + 
    geom_bar(width = 1, stat = "identity", color = "white") +
    coord_polar("y") +
    geom_text(aes(label = paste0(per3,"%")), 
              position = position_stack(vjust = 0.5)) +
    theme_void()

sas


# 치킨 전문점을 이용하는 사람들의 나이비율은 30-40대가 가장 높았고 그 다음이 10-20대, 그리고 50대 이상입니다.
# 이 데이터를 통해 치킨 소비자들의 특성을 살펴보면, 50대 이상의 중장년층 보다는 40대 이하의 연령대를 타겟으로 삼아
# 창업을 준비해야 함을 알 수 있습니다.


grid.arrange( gen,sas, nrow=2)


# 치킨전문점을 이용하는 성별 비율과 치킨전문점을 이용하는 나이비율을 원그래프로하여 한 화면에 표현하기 위해 grid.arrange 함수를 이용했습니다.
# 치킨전문점을 이용하는 성별은 비슷하며, 나이대는 30-40대가 가장 많이 이용했습니다.


# 서울 구별 치킨전문점 수

gu <- ggplot( seoul.xlsx, aes(x = 지역구, y = 치킨전문점수 )) +    
  geom_bar(stat="identity", width = 0.9, aes(fill=지역구)) + 
  labs(x = " 지역구 ", y= " 치킨전문점수 ", position = "dodge" )+
  ggtitle( " 서울지역구별 치킨전문점수 " ) + 
  geom_text(aes(label= round(치킨전문점수,2)),position = position_dodge(width=1.8), vjust=1.5) +
  theme(legend.position = "bottom", plot.title = element_text(hjust=0.5, size=18, face="bold",  colour = "gray30"))    

gu


# 서울 지역구별 치킨 전문점 수를 막대 그래프로 표현하였습니다.
# 2019년 6월 기준, 서울특별시 지역구에서 가장 많은 치킨 전문점이 있는 곳은 강남구(357개)이며, 가장 적은 곳은 용산구(90개)입니다.
# 가장 인구가 많은 서울을 기준으로 보았을 때, 서울에서 창업을 하기 위해서는 치킨전문점의 수가 많은 지역구 보다는
# 적은 곳에서 하는 곳이 상대적으로 경쟁이 수월할 것입니다.


#서울특별시 10대20대 여성고객 치킨통화량 수


call <- ggplot(치킨통화량.xlsx , aes(x = 지역구, y = 총통화량 )) +    
  geom_bar(stat="identity", width = 0.9, aes(fill=지역구)) + 
  labs(x = " 지역구 ", y= " 총통화량 ", position = "dodge" )+
  ggtitle( "서울특별시 10대20대여성 2019년6월 치킨통화량  " ) + 
  geom_text(aes(label= round(총통화량,2)),position = position_dodge(width=1.8), vjust=1.5) +
  theme(legend.position = "bottom", plot.title = element_text(hjust=0.5, size=18, face="bold",  colour = "gray30"))    

call


# 2019년 6월 기준 서울특별시 지역구 10대-20대 여성고객의 치킨 배달 통화량의 수를 막대 그래프로 표현했습니다.
# 치킨 배달 통화량의 건수가 가장 많은 지역구는 강남구(347건)이며, 가장 적은 치킨 배달 통화량 건수를 기록한
# 지역구는 도봉구(42건)입니다. 따라서 치킨전문점 창업을 서울 기준 10대,20대 여성을 타겟으로 한다면 배달 통화량이
# 많은 지역구를 선택하는것이 창업성공에 도움을 줄 수 있을 것입니다.


# 3-2. 변수들 간의 상관도 분석 

# 상관계수가 0.8/-0.8 이상인 변수들을 살펴보면, 배달앱이용비율-평균방문고객수1일(-0.84), 남성고객-전환이유영업이익감소(-0.8), 
# 여성고객-전환이유영업이익감소(0.8), 고객10_20대-남성고객(-0.81), 
# 고객10_20대-여성고객(0.81), 고객50대이상-전국사업체수2018(0.82), 고객50대이상-고객10_20대(-0.89)으로 나왔습니다.


group <- chicken.xlsx[ ,c( "평균방문고객수1일", "평균배달수1일", "평균테이크아웃수1일", "매출액대비영업이익률2018",
                           "월평균매출액", "업종전환경험여부", "전환이유영업이익감소", "전환이유동종업종경쟁",
                           "배달앱이용비율", "프랜차이즈가게비율", "전국사업체수2018", "남성고객","여성고객", "고객10_20대", "고객30_40대", "고객50대이상", "배달외식평균지출비용" ) ]

group.cor <- cor( group )
group.cor

corrplot( group.cor, method = "number" )  


# 각 변수들 간의 상관계수를 구한 후, cor 함수를 활용하여 숫자로 시각화 하였습니다.
# 상관계수가 높은 변수들 중에서 논리적으로 판단하였을 때, 그 수치가 의미하는 관계가 유의미하다고 판단되는 관계에 대해서
# 산점도로 시각화하였습니다.


# 고객 10_20대이상-여성고객에 대한 산점도


z <- ggplot( data = chicken.xlsx, aes( x = 고객10_20대,
                                       y = 여성고객,
                                       color = 업종 ) ) + 
    geom_point( size = 8 ) +
    stat_smooth(method = 'lm', se=F, color='red') +
    ggtitle( "고객10_20대-여성고객" )+
    theme( plot.title = element_text( size = 25,
                                      face = "bold",
                                      colour = "black" ) )
z


# 고객 10_20대-여성고객에 대한 산점도가 0.81로 양의 상관관계가 높습니다. 이 데이터가 의미하는 것은
# 10대,20대 고객이 증가할 수록, 여성고객도 함께 증가한다는 것이므로, 치킨전문점 창업을 할 때 10대,20대 여성을
# 메인 타켓으로 설정하는 것이 좋은 창업전략이라고 생각합니다.



# 3-3. 단순선형 회귀분석


# 상관계수가 높았던 변수들 중에서 고객10_20대와 여성고객을 회귀분석의 대상으로 선정하였습니다.


# 산점도를 통한 선형 관계 확인


plot( 여성고객~고객10_20대, data = chicken.xlsx )


# 회귀모델 구하기
# 종속변수(여성고객) ~ 독립변수(고객10_20대) 순으로 지정하였습니다.


model2 <- lm( 여성고객~고객10_20대, chicken.xlsx )
model2
summary(model2)   

# 예측정확성 : 59.14%    
# P-value : 0.01568 ( P-value가 0.05보다 작으면 통게적으로 의미가 있는데, 저희가 구한 값은 0.01568이므로 
#           통계적 의미가 있다고 말할 수 있습니다. )
# Multiple R-squared : 전체 변동량의 약 64% 정도를 이 모형을 통해 설명할 수 있습니다.



# 여성고객 = 0.3917(고객10_20대) X 고객10_20대 + 42.3765   


plot( 여성고객~고객10_20대, data = chicken.xlsx )
abline( model2, col = "blue" )


coef( model2 )               # coef : 회귀계수 출력함수
coef( model2 )[ 1 ]          # b값  (42.37653)
coef( model2 )[ 2 ]          # W값  (0.3916881)


b1 <- coef( model2 )[ 1 ]
W1 <- coef( model2 )[ 2 ]


고객10_20대 <- 100
여성고객 <- W1 * 고객10_20대 + b1
여성고객                              # (50.79783)


# 회귀분석한 모델을 토대로 실제 변수의 수치를 입력하여 예측하려 하였으나, 데이터 수집 과정 중에 해당 변수의 데이터가
# 수치가 아닌 비율로 나타나고 있었기 때문에 예측하지 못하였습니다. 


# 4. 결론

# 치킨 전문점을 창업을 염두에 두고 계신 창업주분들을 대상으로 현재 영업하고 있는 치킨전문점의 정보를 분석하고 소비자들의 동향을 예측
# 하였습니다. 데이터를 분석한 결과, 2018년 기준 치킨전문점의 사업체수는 한식,분식 다음으로 많은 점포가 있었고, 치킨전문점들의 프랜차이즈
# 비율은 70%를 육박하였습니다. 이것은 치킨전문점이 다른 요식업계와 비교하여 상대적으로 동종업종 간의 경쟁이 심하고 대부분의 소비자들이
# 프랜차이즈 점포를 선호한다는 것입니다.

# 치킨전문점의 판매형태는 소비자들이 직접 매장을 방문하는 것보다는 대부분 배달이나 테이크아웃 위주입니다. 또한 배달앱의 사용률도 
# 치킨전문점이 월등이 높아따라서 치킨전문점을 창업할 창업주들은 소비자들의 매장 방문을 고려하여 매장의 위치와 인테리어가 따로 필요없으며, 
# 단지 잘 갖춰진 주방만 있으면 됩니다. 그리고 치킨전문점의 매출액 대비 영업이익률이 낮기때문에 이익률을 높이도록 사이드 메뉴 또한 준비해야합니다.  
# 하지만 치킨전문점의 업종전환 이유는 여러가지 가있는데 영업이익 감소, 동종업종의 경쟁, 구인의 어려움이 있었습니다.
# 따라서 치킨전문점 창업을 준비하는 창업주들은 창업할 때, 영업이익감소와 동종업종경쟁의 부분을 고려해야 할 것입니다.
# 치킨전문점을 이용하는 성별은 비슷하며, 나이대는 30-40대가 가장 많이 이용했습니다. 따라서 40대이하의 연령층을 주 타겟으로 창업 전략을
# 세워야 합니다.

# 더 구체적으로 지역을 선정하여 가장 인구가 많은 서울을 기준으로 보았을 때, 서울에서 창업을 하기 위해서는 치킨전문점의 수가 많은 지역구 보다는
# 적은 곳에서 하는 곳이 상대적으로 경쟁이 수월할 것입니다.치킨 배달 통화량의 건수로 보자면 가장 많은 지역구는 강남구(347건)이며, 가장 적은 치킨 배달 통화량 건수를 기록한
# 지역구는 도봉구(42건)입니다. 따라서 치킨전문점 창업을 서울 기준 10대,20대 여성을 타겟으로 한다면 배달 통화량이 많은 지역구를 선택하는것이 창업성공에 도움을 줄 수 있을 것입니다.
