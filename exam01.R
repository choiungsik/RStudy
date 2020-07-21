num <- 10
num
num <- 20
num

char <- 'Hello World!'
char
# 논리형은 모두 대문자로 기입
isCheck <- TRUE
isCheck
# 한글자만 써도 인식해서 사용가능
isCheck <- F
isCheck

sum(10, 20, 30, 40, 50, 60, 70, 80, 90)
sum(10, 20, 30, NA)
#NA가 있으면 NA를 제거하라고 NA를 출력한다.

sum(10, 20, 30, NULL)
#NULL은 값이 없기에 정상적 출력됨

#현재 날짜와 시간을 출력
Sys.Date()
Sys.time()
date()

# 기준 날로부터 20일 뒤 확인
as.Date(20, '2020-06-29')
# 오늘 기준 40일 전 확인
as.Date(-40, Sys.Date())
# 빼기를 통해 남은 시간 계산 가능
as.Date("2020-12-25") - as.Date(Sys.Date())

#추석은 10월 1일이며 며칠 남았는가

as.Date('2020-10-01') - as.Date(Sys.Date())

foods <- c("우럭", "광어", "산오징어", "산낚지", "참치")
foods
foods[2]

foods[1:3]
foods[c(2, 3, 5)]

num <- c(15, 2, 3,5, 48, 6, 84,13, 121,546,123 ,54 ,53, 154,641,566, 4,54)
num
num[num >= 30]

num <- seq(1, 100)
num
x <- seq(1, 50, by = 4)
x
x <- seq(1, 50, length.out = 4)
x

var1 <- c(10, 20, 30)
var2 <- c(50, 60, 70)
var1 + var2

homerun <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 13, 13, 13, 12, 12, 12, 11, 11, 16, 16, 16, 17, 17, 17, 18, 19, 22, 23, 24, 25, 26, 27, 30, 38, 39, 40, 100)
hist(homerun)
summary(homerun)
boxplot(homerun)
