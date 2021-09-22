#아이들 몸무게 모델링(잡음)
#목표: 한국 전체 아이들 (2~10세)의 나이별 몸무게 추세 추정

#실제 추세선 / 몸무게가 결정되는 공식(임의)
true_func <- function(x){
  result <- x * 3 + 10 # x = 나이 
  return(result)
}

age <- sample(seq(2, 10, by = 1/12), 3000, replace = TRUE)
variation <- rnorm(length(age)) * 3

weight <- true_func(age) + variation

plot(age, weight, pch = 19, ylim = c(5, 50), xlim = c(2, 10))
abline(10, 3, col = "white")

