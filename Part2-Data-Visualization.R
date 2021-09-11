

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

#1 Pie Chart ---------------------------------------
#: categorical data, 성별 변수 등

pie(mytable, 
    main = "Student Gender") #차트명= main
sum(mytable) 
c(10, 20) / 30 #퍼센테이지 구하기
text(0.3, 0.3, "33.3%") #플롯에 텍스트 입력
text(-0.3, -0.3, "66.7%") 

#Stem and leaf plot -------------------------------
stem(mydata$midterm)
stem(mydata$midterm, scale = 2) #scale: 단위 늘리기(이 경우 10단위를 5단위로 세분화)

#Histogram ----------------------------------------
mydata$midterm
hist(mydata$midterm, breaks = c(0, 20, 40, 60, 80),
     main = "MIDTERM")

hist(mydata$midterm, breaks = c((0:4)*20))
hist(mydata$midterm, breaks = c((0:16)*5),
     mian = "Distribution of Midterm Result",
     xlab = "Score",
     ylab = "Frequency") #5단위로 히스토그램을 그리고 싶고, 맥시멈 값은 80일 때

#Box plot (r/ to Median) --------------------------
boxplot(mydata$midterm, 
        main = "Distribution of Midterm Result",
        xlab = "Score",
        horizontal = T)

#outlier 표시하기
mydata$midterm[1] <- 100

boxplot(mydata$midterm, 
        mydata$final, 
        main = "Distribution of Midterm Result",
        xlab = "Score",
        ylab = "Exam Type",
        names = c("Midterm", "Final"),
        horizontal = T)

#Scatter plot(산점도) -----------------------------
plot(mydata$midterm, mydata$final, 
        main = "Scatter of Exam Result",
        xlab = "Midterm",
        ylab = "Final",
        asp = 1) #asp: x/y축 scale 1:1로 조정(필)


