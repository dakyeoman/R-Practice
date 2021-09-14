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
#Q. 어떤 직선이 더 좋은가? 를 측정하는 지표
