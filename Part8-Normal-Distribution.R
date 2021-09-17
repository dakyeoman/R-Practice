#Normal Distruibution
#1. 평균, 분산이 모수(parameter)로 작용
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

sample1 <- rnorm(10, mean = 0, sd = 1)
sample2 <- rnorm(10, mean = 0, sd = 0.5)

x <- seq(-4, 4, by = 0.05)
y <- dnorm(x, mean = 0, sd = 1)
y3 <- dnorm(x, mean = 0, sd = 0.5)
plot(x, y, type = "l",
     main = "Normal dist.", #가능도함수
     xlim = c(-4, 4), ylim = c(0, 0.8))

points(x, y3, type = "l", col = "blue")

points(sample1, rep(0, length(sample1)), 
       col = "black")

points(sample2, rep(0, length(sample2)) + 0.1, 
       col = "blue")



#dnorm은 실제로 정규분포 모양인가. 
sample <- rnorm(10000) 
hist(sample, probability = T)
points(x, y, type = "l")
summary(sample)
#그러타
#정규분포 <<< 평균, 분산
#mean = 0, sd = 1 in dnorm, rnorm : already set.

dnorm(x, mean = 0, sd = 1)

#68-95-99.7 Rule
mysample <- rnorm(1000, mean = 3, sd = 2)
#check w/ length(mysample), head(mysample), hist(mysample)

sum(mysample > 1 & mysample < 3+2) / 1000 #68%
sum(mysample > 3-2*2 & mysample < 3+2*2) / 1000 #95%
sum(mysample > 3-2*3 & mysample < 3+2*3) / 1000 #99.7

