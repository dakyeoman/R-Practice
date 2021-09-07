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



