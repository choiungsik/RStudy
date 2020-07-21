install.packages("Sejong")
install.packages("hash")
install.packages("rJava")
install.packages("tau")
install.packages("RSQLite")
install.packages("devtools")
install.packages("wordcloud2")


library("KoNLP")    # 명사추출
library("KernSmooth")
library("wordcloud2") # 시각화

v1 <- "빨리 정상적으로 돌아가서 다시 모여서 수업하면 좋겠네요 ㅎㅎ 집에서 처리하니 편하기는 한데 수업쪽은 많이 힘드실 것 같아여~ 언제쯤이면 해결이 될까요??"

extractNoun(v1)

list.files()

mergeUserDic(data.frame(c("킹왕짱"), c("ncn")))
mergeUserDic(data.frame(c("ㅋㅋ루ㅋㅋ"), c("ncn")))
mergeUserDic(data.frame(c("비냉"), c("ncn")))
mergeUserDic(data.frame(c("물냉"), c("ncn")))
mergeUserDic(data.frame(c("ㅂㄴ"), c("ncn")))
mergeUserDic(data.frame(c("한솥"), c("ncn")))
mergeUserDic(data.frame(c("육칼"), c("ncn")))

text1 <- readLines("kakao.txt")

text1
text2 <- extractNoun(text1)

text2

text3 <- unlist(text2)
text3

# gsub('찾고싶은 문자', '변경할 문자', 데이터)
text4 <- gsub('이모', '', text3)
text4 <- gsub('[ㄱ-ㅎ]', '', text4)
text4 <- gsub('(ㅜ|ㅠ)', '', text4)
text4 <- gsub('^^', '', text4)
text4 <- gsub('^^^', '', text4)
text4 <- gsub('^^^^', '', text4)
# ^ 기호를 제곱등으로 잘못 인식할 수 있어 문자형태도 리스트 제거
text4 <- gsub('\\^\\^', '', text4)
text4 <- gsub('\\^\\^\\^', '', text4)
text4 <- gsub('\\^\\^\\^\\^', '', text4)
# 특수기호 제거
text4 <- gsub('[~!@#$%^&*()_+=?]<>','',text4)

# 5글자 이상의 명사는 일반적으로 사용빈도가 낮아 제거
text4 <- text4[nchar(text4) > 1]
text4 <- text4[nchar(text4) < 5]
text4

# 각각 단어가 몇개씩 있는지 확인
text5 <- table(text4)
text6 <- sort(text5, decreasing = T)
text6

text7 <- tail(text6, 100)
text7 <- head(text6, 100)
wordcloud2(text7, size = 1)

name <- c('김지훈', '이유진', '박동현', '김민지')
english <- c(90, 80, 60, 70)
math <- c(50, 60, 100, 20)

data1 = data.frame(name, english, math)
data1

# 기존 데이터(변수)에서 파생되어 나오는 점수 총합, 평균 등을 파생변수라고 말함
mean(data1$english)
data1$avg = (data1$english + data1$math) / 2
# 학생들 평균점수의 평균
mean(data1$avg)
# 평균점수의 중앙값
median(data1$avg)
# 평균점수의 편차
var(data1$avg)
# 분산을 원래 데이터타입으로 맞춤 = 표준편차
sd(data1$avg)
# 사분수로 보여주는 함수
summary(data1$avg)
# 사분수를 시각화하는 함수
boxplot(data1$avg)
# 도수분포표를 시각화하는 함수
hist(data1$avg)

# 패스기준 평균 60점이상 조건문
data1$pass <- ifelse(data1$avg >= 60, 'pass', 'fail')
data1

# pass와 fail의 빈도수 측정
table(data1$pass)

install.packages('ggplot2')
library('ggplot2')
# 빈도수를 시각화해주는 함수
qplot(data1$pass)
