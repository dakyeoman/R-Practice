#1. 변수, R에서 벡터와 행렬 정의, Recycling 
sqrt(16) #루트
9 %% 4 #나머지
9 %/% 4 #몫

x #variable

x <- c(1,2) #vector
y <- c(3,4)
x+y # 4 6


x <- c(1:10)
y <- c(1:5)
x+y 
#vector의 recycling특성; 2  4  6  8 10 // 7(6+1)  9(7+2) 11(8+3,..) 13 15

x
y <- c(1:21)
x + y #error!

x <- seq(3, 5, by = 0.1) #x부터 y값까지 n(by)씩 증가하는 vector정의
y <- seq(3, 5, length.out = 4) #3에서 5까지 4칸짜리 상자를 만들어죠

#'[]'명령어 : n번째 숫자에 접근
x <- 2:11
x[3] #>>> 8
x[1:3]
x[c(3,5,2)]

#행렬 matrix(실제값, ncol(행 수)=n, nrow(열 수)=n, byrow(가로로 방향지정) = T)
x <- matrix(1:9, nrow=3, ncol=3, byrow = T)
x[1,2] #1행 2열의 값
x[c(2, 3), 1] #2,3행에 있는 1열
x[, c(1,2)] #모든 행의 1, 2열 // x[ , ] = 행렬 x 전체

#데이터 불러오기
mydata <- read.csv("https://www.theissaclee.com/ko/courses/rstat101/examscore.csv", header = TRUE)
#read.csv("adress", header = TRUE 열 이름 정보 불러오기
mydata
head(mydata) #mydata의 6개 열만 보여줘
