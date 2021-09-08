a = 1
a <- 1
a <- 2
a
a == 1
a == 2
a != 1
a <- "abc"
abc <- 2 

a
a <- 3
b <- "abcd"
class(a)
class(b)

a2 <- as.character(a)
class(a2)

a3<-as.numeric(a2)
class(a3)

#vector = column (=c)
## ( ) <- 함수를 의미
#esc로 실행 취소
##[ ] <- 방을 의미함

a <- c(50, 20, 30)
a[1]
a[2]
a[3]
b<-c(1, 2, 3)
a+b
a+1
b*2

a<-c("aa", "bb", "cc")
a[1]
a[2]
a[3]
a[c(1, 2)] ##두개 이상일 때는 C로 묶어서 접근해야 함.
a[c(1,3)]
#a[1,2] : 행렬(matrix)에서 쓰이기 때문에 벡터에서 먹히지 않는다.
a[1:3]
1:3 ## : ~부터 ~까지 벡터 생성
d<-1:10 
d
a[-1] ## -n: n을 제외하고 가져옴
a[-3] 
a[-c(1:2)]

a[c(T,T,F)]
a[a == "aa"] ##: aa, 조건 설정해서 필요한 데이터를 가져올 때 사용

a <- 1:100
a
a[a %% 2 == 0] #%%: 나머지 구하는 연산자
a[a %% 2 == 1] #1:100에서 홀수만 가져오기

#------------

m <- matrix(1:15, ncol=3, byrow = T) 
#ncol=3 : column(행)의 수는 3으로 해줘, byrow: 행 순서대로
#byrow는 기본 옵션이 False - help(왼쪽)에 설명
m
m[2,2]
m[3,2]
m[1,c(1,2,3)]
m[3,c(3)] #3행에서 3번째 변수
m[1, ] #첫번째 행에 접근하기, 공백은 all 
## , 기준으로 해서 앞은 행에 대한 정보, 뒤는 열에 대한 정보
m[ ,2] #2열만 가져와
m[,-1]
m[2:4, 2] 
m[2:4, c(2,3)]

m <- matrix(1:15, ncol=3, byrow = T) 
m
m2
m2<-data.frame(m)
m2
m[ ,1]<-as.character(m[ ,1])
m
str(m2)
m2[ ,1]<-as.character(m2[ ,1])
str(m2)

m2$X3 #$를 쓰면 칼럼명을 쓸 수 있다. Xn: n번쨰 행
m2$X4<-c(1,2,3,4,5) #새로운 (5번쨰) 행 선언!
m2

#matrix는 각 칼럼이 다 똑같은 형태여야 함.
#data frame은 각 칼럼이 다른 형태를 가져도 okay
#다루는 데이터는 대부분 data frame의 형태. 
#but 머신러닝 알고리즘에서 매트릭스 요구되는 경우
#-> 행렬을 벡터형으로 바꿀 수 있음

m3<-as.matrix(m2)
#성별 남 여
sex<-c("남","여", "여", "남")
sex2<-ifelse(sex=="남",1,0) #facter -> int

#결론: 데이터 프레임을 쓰는 게 좋다. 

#----------

#cbind/rbind = column/row bind: column/row을 묶어줘
cbind(m2,c(3,2,4,5,5))
rbind(m2,c(3,2,4,5))

cbind(m2,m2) #행렬 묶기도 가능
rbind(m2,m2)

#for문 ------------

for(i in 1:10){
  print(i)
}

for(i in c(1,3,5,7)){
  print(i)
}

#크롤링을 한다면? 하나의 데이터프레임으로 만들어야
#rbind->data X 2

m3<-NULL
for(i in 1:10){
  m3<- rbind(m3,m2)
  print(i)
  print(dim(m3))
}
dim(m3)
m3

##if 문
m3<-NULL
for(i in 1:10){
  
  if(i %% 2==0){
    
    #(i가 짝수라면 아무것도 실행하지 않음)
  }else{
  m3<- rbind(m3,m2)
  }
  cat("\n",i) #cat = print
}
dim(m3)
"n"
#cat("\n",i) ## "/n" = enter, "/t" = tab
#for문을 쓸 때는 항상 cat을 써야 함.에러 위치 알기 쉽고, 

#While
i <-1
while(i<100){
  if(i >50){
    break;
  }
  print(i)
  i<-i+1
}

#for < while 사용 빈도 
#i : 1~10까지 : for
#while은 변수가 정해져 있지 않은 (조건만 있는) 반복 작업에서 활용
#j < 0.00001

i<-100
while(i>0.01){
  i <- i -runif(1, min=-0.001, max=0.01)
  cat("\n",i)
}

m <- matrix(1:15, ncol=3, byrow = T)
m2 <- data.frame(m)
colnames(m2)<-paste0("v", 1:3)
m2


getwd() #wd:working directory
setwd("/Users/adrua/Desktop/R-Practice")
getwd()

rownames(m2) #행으로 인식됨 -> 불러들일 때 첫째 열 삭제or저장 시 rownames 삭제
write.csv(m2,"m2.csv", row.names = F) #delete rownames. always
aaa<-read.csv("m2.csv")
aaa
dim(aaa)

save(m2, file = "m2.RData")
load("m2.RData")
m2

#csv는 엑셀:매트릭스나 데이터프레임의 형태로만 저장됨(깨질 수도 있음)
#RData: 빠름!벡터, 데이터프레임, 매트릭스, 기타등등 저장-그 형태 그대로 가져올 수 있다. 


#---------------------
#LIST객체

lista<-list() 
lista
lista[[1]]<-m2
lista

lista[[2]]<-c(1,2,3)
lista[[3]]<-c("a","b","c")

lista
#vector, dataframe, matrix - 작은방/list >>큰 [[]]방:형태 무관&작은 방[]
#각각의 큰 방과 작은 방에 접근 가능.
lista[[1]][2,]

aa<-lista[[1]]
aa[1,]

save(lista,file="lista.RData")
load("lista.RData")
lista

#행렬의 문자열 -> for 문 이용해서 숫자로 변환하기 
m<-matrix(1:15, ncol=3, byrow = T)
m[ ,1]<-as.character(m[ ,1])
m<-data.frame(m)
str(m)

for(i in 1:ncol(m)){
  m[,i]<-as.numeric(m[,i])
}
str(m)

#----plot------
plot(rnorm(100)) 
hist(rnorm(100)) #histogram
#r plot -> ggplot(google plot)데이터시각화 활용가능
plot(1)

plot(m)
cor(m) #cordination matrix ???

data<-cbind(rnorm(100), rnorm(100), rnorm(100))
data 
cor(data)
plot(data.frame(data))
#변수들간의 산점도로 데이터간 관계 확인 가능. 
ts.plot(data, col=c('red', 'blue', 'black'))


data2<-data.frame(data)
head(data2)

fit<-lm(X1~., data=data2) #lm: 회귀분석 함수

sse<-sum((fit$residuals)^2) 
#sum of squares error SSE: 회귀모델의 오차
#회귀모델에서 (좋든 나쁘든)변수가 많을 수록 오차가 줄어든다.

for(i in 1:30){

  data2<-cbind(data2, rnorm(100))
  colnames(data2)<-paste0("X", 1:ncol(data2))
  fit<-lm(X1~., data=data2)

sse<-c(sse,sum((fit$residuals)^2))
ts.plot(sse) 
Sys.sleep(0.1)
}


 
