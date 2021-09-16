#Normal Distruibution
#1. 평균, 분산이 모수로 작용
#2. rnorm() : 표본 추출, dnorm() : 가능도 함수 정보
#3. 모든 정규 분포; " 68 - 95 - 99.7" rule

#rnorm() : 정규확률변수(*0 기준 대칭) 
true_fuc <- function(x){
  result <- x * 3 + 20
  return(result) 
}

x <- c(2, 6, 3, 7, 4, 6, 5, 1, 9, 8, 10)
r_noise <- rnorm(11) #-rnorm으로 모델링된 노이즈 
y <- true_fuc(x) + r_noise
plot(x,y, pch = 10, ylim = c(10, 55))
abline(20, 3, lty=2)

#dnorm() : density 가능도함수info
x <- seq(-3, 3, by = 0.05)
y <- dnorm(x)
plot(x, y, type = "l",
     main = "Normal dist.")

#dnorm은 실제로 정규분포 모양인가. 
sample <- rnorm(10000) 
hist(sample, probability = T)
points(x, y, type = "l")
summary(sample)
#그러타
#정규분포 <<< 평균, 분산
#mean = 0, sd = 1 in dnorm, rnorm : already set.

?dnorm



