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
#a[1,2] : 행렬에서 쓰이기 때문에 벡터에서 먹히지 않는다.
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

matrix(1:15, ncol=3, byrow = T) #ncol=3 : 칼럼의 수는 3으로 해줘, byrow: 행 순서대로

? matrix


