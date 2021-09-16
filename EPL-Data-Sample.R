h<-c(158,160,162,163,165,167,170,171,172,175,178,181)

w<-c(50,60,62,63,65,67,70,71,72,75,78,81)

summary(h)

str(h)

summary(w)

str(w)

hist(h)

hist(w)

plot(h,w)

cor(h,w)



age<-c(15,16,16,16,17,17,18,19,21,22,23,24)

record<-c(8,7.5,7.4,7.4,7.3,7.2,7.1,6.7,6.8,6.5,6.3,6.0)

record2<-c(8,6.5,5.8,4,5.5,7.2,7.1,6.7,6.8,6.5,6.3,6.0)



plot(age,record)

plot(age,record2)



cor(age,record)

cor(age,record2)





###data불러오기

hwang<-read.csv(file.choose())

str(hwang)

summary(hwang)



plot(hwang$Goals,hwang$Rating)

cor(hwang$Goals,hwang$Rating)



plot(hwang$AerialsWon,hwang$Rating)

cor(hwang$AerialsWon,hwang$Rating)

