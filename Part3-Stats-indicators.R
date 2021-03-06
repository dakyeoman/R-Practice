#Median : 1) sort 작은 수 > 큰 수 
#2) 중앙값 찾기: odd) n+1/2, <-> ( n+1/2 + n+2/2 ) / 2
#! mean이 median 보다 극단값(outlier?)에 영향 더 크게 받음.

#대칭분포: mean =  median
#skew to the left/right(기운 분포): mean =/= median
# >>> skew to the left: mean < median
# >>> skew to the right: mean > median


#-----------------------------------------
#<Box Plot 그리기 이론편>
#1. median 구하기 
#2. Quartiles 사분위수 구하기
  #Q1: Q2보다 작은 데이터의 중앙값 
  #Q2: Median 
  #Q3: 데이터의 75%가 이 숫자보다 작다. 
    #--- 50% < Q2 < 50% / 75% < Q3 < 25%

#3. IQR(Inter Quartile range) = Q3 - Q1
#4. 가상의 울타리 만들기: 
  #Upper fence: Q3 + 1.5 x IQR
  #Lower fence: Q1 = 1.5 x IQR 
#5. Max/Min data point in Fence (called upper/lower whisker)
#6. Fence >>> Whisker(5.의 점까지만 포함)

boxplot(c(1:10, 20), horizontal = T) 
boxplot.stats(c(1:10, 20)) #r의 계산과정 보여줘
 

 
set.seed(1234) #seed가 같으면 같은 결과가 나온다. 
x <- sample(1:10, 6) #1~10까지의 벡터 중 랜덤하게 6개 선택 
x 

#Practice: x의 분산 구하기

var(x) #R에서 분산을 구하는 함수
sd(x) #표준편차를 구하는 함수

#(아래는 표준편차 계산 과정)
x_bar <- mean(x) 
my_var <- sum((x - x_bar)^2) / 5 #(n-1)
my_var #분산
sqrt(var(x)) #표준편차


#2
x <- rep(5, 10)
y <- c(1:10)
z <- c(3, 4, 5, 6, 7, 4, 5, 6, 5, 5)

hist(x, breaks = 0:10)
sd(x)

hist(y, breaks = 0:10)
sd(y)

hist(z, breaks = 0:10)
sd(z) 

#이때 sd(y) > sd(z) *x축이 중요함









