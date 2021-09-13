#체측평 W2 9/13 
h <- c(158, 160, 162, 163, 165, 167, 170, 171, 172, 175, 178, 181)
w <- c(50, 60, 62, 63, 65, 67, 70, 71, 72, 75, 78, 81)
data <- as.data.frame(h, w)
summary(h)
str(h)
summary(w)
str(w)
as.numeric()
hist(h) #빈도를 나타냄
plot(h, w) #x증가 y증가
cor(h, w) #cor(): 상관 구하기!

age <- c(15, 16, 16, 16, 16, 16, 17, 17, 17, 18, 19, 18)
record <- c(8, 7.5, 7.4, 7.4, 7.3, 7.2, 7.1, 6.7, 6.8, 6.5, 6.3, 6.0)
record2 <- c(5, 2.4, 9.3, 4.3, 9.3, 8.2, 3.1, 6.7, 6.8, 6.5, 6.3, 6.0)

plot(age, record) #부적상관임을 알 수 있음 

plot(age, record2)#데이터 무작위.

cor(age, record) #강한 부적 상관
cor(age, record2) #규칙 없음 - 0에 수렴


#data불러오기
hwang <- read.csv(file.choose()) #file.choose():파일선택가능
str(hwang) #변수가 나올 것.
#data.frame에서 obs.;행, variables: 변수의 개수
#summary():최솟값, Q1, Q2, Q3, 최댓값, 중앙값 표기

plot(hwang$Goals, hwang$Rating)
cor(hwang$Goals, hwang$Rating)
#데이터를 선택해서 분석 가능해야 하며, 결과가 타당한지 다시 생각해야. 


