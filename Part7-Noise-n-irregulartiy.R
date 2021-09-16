#original straight
true_fuc <- function(x){
  result <- x * 3 + 20
  return(result)
}

range_vec <- 1:20
plot(range_vec, true_fuc(range_vec), 
     type = "l", lty = 3)

#when w/o noise: points(x, y) 관찰 #잡음 없는 직선
points(4, true_fuc(4), pch = 19)
points(10, true_fuc(10), pch = 19)
x <- 5:15
points(x, true_fuc(x), pch = 19)

#when w/ number noise! #잡음
range_vec <- 1:20
plot(range_vec, true_fuc(range_vec), 
     type = "l", lty = 3)

noise_fuc <- function(x){
  result <- x * 3 + 20 + 4
  return(result)
}

points(x, noise_fuc(x), pch = 19)

#noise w/ some Rules! #규칙성 있음
range_vec <- 1:20
plot(range_vec, true_fuc(range_vec), 
     type = "l", lty = 3)

x <- 5:15
noise_fuc2 <- function(x){
  true_vec <- x * 3 + 20 + 0
  noise_vec <- rep(0, length(x))
  noise_vec[x %% 2 == 0] <- 3
  noise_vec[x %% 2 == 1] <- -5
  
  result <- true_vec + noise_vec
  return(result)
}

points(5, noise_fuc2(4), pch = 19)
points(9, noise_fuc2(9), pch = 19)
x <- 5:15
points(x, noise_fuc2(x), pch = 19)

#Randomly generator 0(.0000) ~ 0.9999
#소숫점 6자리까지 시간 노티.
options(digits.secs = 6) 
Sys.time()
1378 / 10000
6585 / 10000
2936 / 10000
6332 / 10000

mode(Sys.time()) #Sys.time()값은 숫자벡터(numeric)다.

range_vec <- 0:0.999
plot(range_vec, true_fuc(range_vec), 
     type = "l", lty = 3)

#Sys.time()값의 마지막 4자리를 가져오는 함수 생성
random_0to1 <- function(){
  options(digits.secs = 6)
  current_time <- as.character(Sys.time())
                  #Sys.time()값을 문자열로 변환
  n <- nchar(current_time)  #nchar : number of character
  time_decimal <- substr(current_time, n-3, n) #substr(벡터, 시작위치, 끝위치)
  return(as.integer(time_decimal) / 10000) #as.integer: 정수로 변환 
}

a <- random_0to1()
points(a, noise_fuc2(a))

#runif(10) #0~1 랜덤값 n개 생성
runif(10) * 5 + 5 # 5~10의 랜덤값 10개 생성
runif(10) * 4 + 15 # 15~19의 랜덤값 10개 생성

noise_fuc3 <- function(x){
  true_vec <- x * 3 + 20
  noise_vec <- runif(length(x)) * 10 - 5
  
  result <- true_vec + noise_vec
  return(result)
}

range_vec <- 1:20
plot(range_vec, true_fuc(range_vec), 
     type = "l", lty = 3)

points(4, noise_fuc3(4), pch = 19)
points(5, noise_fuc3(4), pch = 19)

x <- 5:15
points(x, noise_fuc3(x), pch = 19)

#runif(1) * 10 - 5 

# -----------------------------
#(노이즈모델링의 정수는 정규분포)
#runif():균일분포(unif)에서 r(random-number)을 뽑아줘
#0~1 숫자가 나올 가능성 같음
true_fuc <- function(x){
  result <- x * 3 + 20
  return(result)
}

x <- c(2, 6, 3, 7, 4, 6, 5, 1, 9, 8, 10)
r_noise <- runif(11) * 10 - 5 #-5:5, 11 random values

y <- true_fuc(x) + r_noise
plot(x, y, pch = 19, ylimi = c(10, 55))
abline(20, 3, lty = 2)






