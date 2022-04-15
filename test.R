data(iris)
pairs(~Petal.Width+Petal.Length, data=iris, pch=c(1,2,3))


install.packages("moments")
library(moments)

skewness(iris$Sepal.Length)
kurtosis(iris$Sepal.Length)

a <- seq(from=25,to=-15,by = -5)
a


data <- subset(iris, select=-c(Sepal.Length, Species))
head(data,5)



name <- c("aa","bb","cc","dd")
gender <- c("F","M","M","F")
price <- c(50,65,45,75)  # 단위는 만원으로 가정
client <- data.frame(name,gender,price)
client
#result <- ifelse(price>=65,"Best","Normal")
client$result <- ifelse(price>=65,"Best","Normal")
client$gender2 <- ifelse(gender == 'M',"Male","Female")
client

x <- c(2,3,5,6,7,10)
max(x)
min(x)
mean(x)


x <- matrix(c(1:12), ncol = 4)
x
t(x)
x


hf <- read.csv("testdata/galton.csv")
hf
head(hf, 5)
cor(hf$mother,hf$height)
model <- lm(formula = hf$height ~ hf$mother, data = hf)
summary(model)
print(0.31318 * 61 + 46.69077)

library(MASS)
a <- MASS::birthwt
head(a, 5)
model <- lm(formula = a$bwt ~ a$age + a$lwt + a$smoke, data = a)
summary(model)
example <- data.frame("age"=c(30，),'lwt'=c(110), 'smoke'=c(0))
example
pred <- predict(model, newdata = example)
