# 시각화( 그래프 출력)
# 이산변수 : 막대, 원형, 점 ...
# 연속변수 : 상자박스, 히스토그램, 산점도...

stu <- read.csv("testdata/ex_studentlist.csv")
head(stu, 3)

stu$grade
table(stu$grade)

barplot(stu$grade)  # 막대그래프로 시각화
?barplot
barplot(stu$grade, ylim = c(0,5),col = rainbow(3), main = '차트제목목' ) #col = c(1,2)

barplot(stu$grade, ylab = "학생",xlab = "학년",
        col = rainbow(3), main = '차트제목', horiz = T ) 

par(mfrow = c(1,2))
barplot(stu$grade, col = c(3,4,5))
barplot(stu[, 4], col = rainbow(4), space = 2)

par(mfrow = c(1,1))  # 원래대로 돌아오기

#점
dotchart(stu$grade)
dotchart(stu$grade, color = 2:5, lcolor = "black", pch = 1:2, cex=1.5)

#파이
str(stu)
df <-  na.omit(stu)
str(df)
pie(df$age)
pie(df$age, labels = df$age, lty =3)
?pie

# 상자박스 : boxplot
mean(stu$height)
median(stu$height)
quantile(stu$height)

boxplot(stu$height)
boxplot(stu$height, range = 0)
boxplot(stu$height, range = 1)
boxplot(stu$height, range = 1, notch = T)
abline(h = 170, lty = 3, col = "blue")

# 히스토그램 : hist

hist(stu$height)
hist(stu$height, breaks = 5)
hist(stu$height, prob = T)
lines(density(stu$height))

hist(stu$height, xlab = "키", main = "히스토그램", xlim = c(150, 200), col = "yellow")

# 산점도
price <-runif(10, min = 1, max = 100)
plot(price)
par(mfrow = c(2,2))
plot(price, type = 'l')
plot(price, type = 'o')
plot(price, type = 'h')
plot(price, type = 's')
? plot

# 3차원 산점도 그래프 ---
install.packages("scatterplot3d")
library("scatterplot3d") 

par(mfrow = c(1,1))
# 붓꽃의 종류별 분류로 3차원 그래프 그리기
levels(iris$Species) 
iris
ir.setosa = iris[iris$Species=='setosa', ]
ir.virginica = iris[iris$Species=='virginica', ]
ir.versicolor = iris[iris$Species=='versicolor', ]

# 형식 : scatterplot3d( 밑변，우변칼럼명，좌변칼럼명，type) 
# 틀 생성
irdata <- scatterplot3d(iris$Petal.Length, iris$Sepal.Length, iris$Sepal.Width, type = 'n')

# 산점도 시각화
irdata$points3d(ir.setosa$Petal.Length, ir.setosa$Sepal.Length, 
                ir.setosa$Sepal.Width, bg='red', pch=21)

irdata$points3d(ir.virginica$Petal.Length, ir.virginica$Sepal.Length, 
                ir.virginica$Sepal.Width, bg='blue', pch=23)

irdata$points3d(ir.versicolor$Petal.Length, ir.versicolor$Sepal.Length, 
                ir.versicolor$Sepal.Width, bg='yellow', pch=25)

# ggplot2 package : 그래프 기능이 확장된 package(library)
