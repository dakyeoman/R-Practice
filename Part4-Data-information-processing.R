#Part 4 사용자 정의 함수
#화씨 -> 섭씨 변환 함수 정의
67, 45, 92, 83, 70

#Method 1
(67 - 32) * 5/9
(45 - 32) * 5/9
(92 - 32) * 5/9
(83 - 32) * 5/9
(70 - 32) * 5/9

#method 2

#tempF <- c(67, 45, 92, 83, 70)
#(tempF - 32) * 5/9

convFtoC <- function(tempF){
  result <- (tempF - 32) * 5/9
  return(result)
}

convFtoC(0)

#Mode function(최빈값 함수) 정의

x <- c(1, 3, 9, 7, 1, 2, 2, 5, 3, 3, 3)
mode(x) #variable 형태 반환 함수 
table(x)
n<-table(x)
which.max(n)

#my way
statMode <- function(data_vec){
  n<-table(data_vec)
  result <- which.max(n)
  return(result)
}

statMode(x)

#his way
statMode <- function(data_vec){
  myTable <- table(data_vec) #6개짜리 벡터
  n <- length(myTable)
  
  result <- names(sort(myTable))[n]
  return(result)
}

statMode(x)

#More clever way(Wow..................!)
statMode <- function(data_vec){
  myTable <- table(data_vec) 
  
  result <- names(sort(-myTable))[1]
  return(result)
}

statMode(x)


#---------------------------------
#OPERATOR 논리연산자 (==, > / <, >= / <=)

TRUE == 1
FALSE == 0

TRUE * TRUE == 1 #TRUE
TRUE * FALSE == 0 #FALSE

#AND, OR
(2 < 3) & (2 < 5) #TRUE
(2 > 3) & (2 < 5) #FALS

TRUE | TRUE #TRUE
TRUE | FALSE #TRUE
FALSE | TRUE #TRUE
FALSE | FALSE #FALSE

#How to Make "Categorical Variables" by Filtering Vector 
x <- c(1, 3, 9, 7, 1)
x[c(TRUE, FALSE, FALSE, TRUE, TRUE)] #Filtering True value in x
x[x <= 3] <- 5 #TRUE 값인 1, 7, 1 자리에 5를 입력 


x <- c(1, 3, 9, 7, 1)

y <- character(length = 5) #5개의 공란 생성
y <- c("1st", "2nd", "3rd", "4th", "5th")

y[x <= 3] <- "<= 3" 
y[x > 3] <- " >3"
y #"<= 3" "<= 3" " >3"  " >3"  "<= 3"

mydata <- read.csv("https://www.theissaclee.com/ko/courses/rstat101/examscore.csv", header = TRUE)
head(mydata)
summary(mydata$midterm) #"summary" returns Min./1st Qu./Median/Mean/3rd Qu./Max. 
y <- character(length = 30) #30개의 공란 만들기
y[mydata$midterm < 49.75] <- "S"
y[mydata$midterm >= 49.75] <- "U"
y

mydata$SU <- y
head(mydata)

mytable <- table(mydata$SU)
pie(mytable, 
    labels = names(mytable), 
    main = "Pie Chart of the S/U")

