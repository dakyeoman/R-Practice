#상관계수(Correlation coefficient) 
#!!! wow IDK 5-3 Perfectly !!!

#-1 <= r <= 1
#r = 0인 경우에는 선형 상관(직선형태의)이 존재하지 않을 뿐, 관계가 없다는 의미는 아니다. 

mydata<-read.csv("https://www.theissaclee.com/ko/courses/rstat101/examscore.csv", header = TRUE)
head(mydata)
#x=mid y=final
x_bar <- mean(mydata$midterm)
y_bar <- mean(mydata$final)

s_x <- sd(mydata$midterm)
s_y <- sd(mydata$final)

z_x <- (mydata$midterm - x_bar) / s_x
z_y <- (mydata$final - y_bar) / s_y

sum(z_x * z_y) / 29
my_corr <- cor(mydata$midterm, mydata$final)#상관계수 : cor()

plot(mydata$midterm, mydata$final, asp = 1,
     xlab = "중간고사", 
     ylab = "기말고사",
     main = "시험점수 산점도")
title(sub = paste("상관계수: ", 
                  round(my_corr, 4)), 
      adj = 1, col.sub = "red") 
#adj = : 오른쪽정렬, col.sub = "색상": 서브타이틀 색상 
abline(v = x_bar) #x_bar의 평균을 나타내는 직선 
abline(h = y_bar)

#r 계산에서 xi - x_bar 먼저 계산.


plot(mydata$midterm - x_bar, mydata$final - y_bar, asp = 1,
     xlab = "중간고사", 
     ylab = "기말고사",
     main = "시험점수 산점도")
title(sub = paste("상관계수: ", 
                  round(my_corr, 4)), 
      adj = 1, col.sub = "red") 

abline(v = 0) 
abline(h = 0)

#---
z_x <- (mydata$midterm - x_bar)/sd(mydata$midterm)
z_y <- (mydata$final - y_bar)/sd(mydata$final)
#---
plot(z_x, z_y, asp = 1,
     xlab = "표준 중간고사 점수", 
     ylab = "표준 기말고사 점수",
     main = "중간, 기말고사 표준점수 분포",
     col = c("blue", "red")[as.factor(sign(z_x * z_y))],
     cex = abs(z_x * z_y))#abs() :absolute value, 절댓값
abline(v = 0)
abline(h = 0)


