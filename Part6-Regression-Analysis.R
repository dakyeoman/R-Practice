y = a + b *X
plot(0, 0, type = "n",
     xlim = c(-10, 10), 
     ylim = c(-10, 10))
abline(h = 0)
abline(v = 0)
#abline(a = 절편, b = 기울기)
#y = x  -> y = 0 + 1*x
abline(a = 0, b = 1, col = "red")
abline(a = 0, b = -8, col = "blue")

#회귀분석
plot(0, 0, type = "n", 
     xlim = c(0, 10), 
     ylim = c(0, 10))
abline(h = 0)
abline(v = 0)
points(x = c(2, 4, 6, 8), 
       y = c(1, 6, 4, 8))
abline(a = 2, b = 0.5)
abline(a = 1, b = 0.8, col = "red")
abline(a = 0.0005164763, 
       b = 0.9499521173, 
       col = "green")

#Q. 어떤 직선이 더 좋은가? 를 측정하는 지표
#>>> RSS = sum((y_i - y_i_hat)^2)
#직선1의 RSS값 = 13
y_i_hat <- c(2, 4, 6, 8) * 0.5 + 2 #직선
y_i_hat
 
y_i = c(1, 6, 4, 8)
sum((y_i - y_i_hat)^2)

#직선2의 RSS값 = 9.4
y_i = c(1, 6, 4, 8)
y_i_hat <- c(2, 4, 6, 8) * 0.8 + 1
y_i_hat
sum((y_i - y_i_hat)^2)

#but 직선식 하나하나 계산 불가능, so RSS를 구하는 함수 
RSS <- function(par){
        intercept <- par[1]
        slope <- par[2]
        y_i_hat <- c(2, 4, 6, 8) * slope + intercept #기울기, 절편 
        y_i <- c(1, 6, 4, 8)
        RSS <- sum((y_i - y_ i_hat)^2)
        return(RSS)
}
RSS(c(2, 0.5))
RSS(c(2, 0.6))
RSS(c(1.2, 0.6))

#와! 이걸 쓰면 죽기 전엔 구할 수 있겠다!

#optim을쓰면 위 과정을 반복 > 최소 RSS가 나오는 par값을 얻을 수 있다. 
result <- optim(par = c(2, 0.5), fn = RSS)
result

#Q. 이 값이 정말 최소값인가? >>> 3D plot으로 확인하기
# rgl을 쓸 때는 함수를 vectorize 해야 함
rss <- Vectorize(RSS) 

library(rgl)

#!!! i got error w/ my rgl installation

open3d()
persp3d(rss, 
        xlim = c(-5, 5), 
        ylim = c(-2, 2), 
        zlim = c(6, 15),
        n = 100) #100개 점을 사용해서 그려줘
 
