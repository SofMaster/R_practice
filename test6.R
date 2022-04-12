# 내장함수와 사용자 정의 함수
# 주요 내장함수 
seq(0, 5, by = 1.5)
set.seed((123))
rnorm(10, mean = 0, sd = 1) #정규분포를 따르는 난수(평균 = 0, 표준편차 = 1) *데이터의 양이 늘어날수록 평균에 몰려 종의 모양을 띄게 된다.
hist(rnorm(10000, mean = 0, sd = 1)) 

set.seed(1)
runif(10, min = 0, max = 100) #균등분포를 따르는 난수(데이터가 특정 범위에서 균등하게 나타난다.) *데이터의 양이 늘어날수록 균등하게 나타난다.
hist(runif(50000, min = 0, max = 100))

sample(0:100, 10)

vec <- 1:10
min(vec)
max(vec)
mean(vec)
median(vec)

var(vec)  # 분산값
sum((vec - mean(vec)) ** 2) / (length(vec) - 1)

sd(vec) # 표준편차
sqrt(sum((vec - mean(vec)) ** 2) / (length(vec) - 1)) #sqrt : 루트 
sd(vec) / mean(vec)  # 변동계수
prod(vec)  # 1 ~ 10 까지의 곱 팩토리얼과 같다.
factorial(10)
table(vec)
abs(-3)   # 절대값

getwd()

mean(iris$Sepal.Length)
sd(iris$Sepal.Length)

# ...

# 사용자 정의함수

func1 <- function(){
  print("사용자 정의 함수")
}

func1()

func2 <- function(arg1){
  print(arg1)
  return(arg1 + 100)
}
func2(10)

# 윤년체크
yun_func <- function(y){
  if(y %% 4 == 0 & y %% 100 != 0 | y %% 400 == 0){
    paste(y, '년은 윤년')
  }else{
    paste(y, '년은 평년')
  }
}  
yun_func(2022)
yun_func(2020)

