#1 Pie Chart
#: categorical data, 성별 변수 등

#데이터 불러오기
mydata <- read.csv("https://www.theissaclee.com/ko/courses/rstat101/examscore.csv", header = TRUE)
#read.csv("adress", header = TRUE 열 이름 정보 불러오기
mydata
head(mydata) #mydata의 6개 열만 보여줘

mydata[ , 3]
mydata$gender #gender값만 불러오기

mytable <- table(mydata$gender) #이 벡터 안에 유니크하게 가질 수 있는 값이 몇 개인지, 값 별로 몇 개가 분포되어있는지.
mytable #1행2열의 행렬로 볼 수 있음
names(mytable) <- c("Female", "Male") #변수명을 변경
mytable

#파이차트만들기 #차트명= main
pie(mytable, 
    main = "Dispersion of Student Gender")
sum(mytable) 





