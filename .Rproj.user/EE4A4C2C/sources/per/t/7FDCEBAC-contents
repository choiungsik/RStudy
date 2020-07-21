# 데이터프레임에 넣을 벡터를 각각 자료를 준비
No <- c(1, 2, 3, 4)
Name <- c('Apple', 'Peach', 'Banana', 'Grape')
Price <- c(500, 200, 100, 50)
Qty <- c(5, 2, 4, 7)

sales <- data.frame(No, Name, Price, Qty)

View(sales)
sales[2, 2]
sales[ , 1]
sales[1 , ]
sales$Price

# csv파일 읽기
list.files()
kia <- read.csv("기아타이거즈연봉.csv")
View(kia)

install.packages("wordcloud")
library(wordcloud)

word <- c('강아지', '고양이', '도마뱀', '고슴도치')
fre <- c(40, 30, 20, 10)
# 단어와 빈도수를 일치하게 준비

wordcloud(word, fre, random.order = F, colors = c("blue", "red"))

install.packages("RColorBrewer")
library(RColorBrewer)

display.brewer.all()
display.brewer.pal(4, "Set1")
pal <- brewer.pal(4, "Set1")
pal

wordcloud(word, fre, random.order = F, colors = pal)

wordcloud(kia[ , 2], kia$연봉, random.order = F, colors = pal)
