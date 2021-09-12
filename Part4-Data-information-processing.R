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

