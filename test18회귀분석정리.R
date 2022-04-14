# mtcars dataset으로 단순/다중 선형 회귀 분석 모델

head(mtcars)
str(mtcars)
dim(mtcars)  # 32 11
# 연속형 data 
#                    mpg cyl disp  hp drat    wt  qsec vs am gear carb
# Mazda RX4         21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
# Mazda RX4 Wag     21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
# Datsun 710        22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
# Hornet 4 Drive    21.4   6  258 110 3.08 3.215 19.44  1  0    3    1
# Hornet Sportabout 18.7   8  360 175 3.15 3.440 17.02  0  0    3    2
# Valiant           18.1   6  225 105 2.76 3.460 20.22  1  0    3    1

# 연습 1 - 단순선형회귀
# 임의의 마력수(hp)를 입력하면 연비(mpg)는 얼마일까? 이를 위한 모델 작성
# hp : 독립변수(연속형 data), mpg : 종속변수(연속형)   연속형 연속형이면 선형회귀분석을 할 수 있다.

cor(mtcars$hp, mtcars$mpg)  # -0.7761684 음의 상관관계가 강하다. 두 변수는 인과관계임
par(mar = c(1,1,1,1))   # mar : margin
plot(mpg ~ hp, data = mtcars, xlab = 'hp', ylab = 'mpg')

model1 <- lm(formula = mpg ~ hp, data = mtcars)
model1
# y = -0.06823 * x + 30.09886

summary(model1)  # p-value: 1.788e-07 < 0.05 유의한 모델, R-squared:  0.6024 60%정도 독립변수가 종속변수를 설명하고 있다.
abline(model1, col = 'blue')

# 예측값 얻기
new_hp = 110
cat('예측값 : ',-0.06823 * new_hp + 30.09886 )  # 예측값 :  22.59356

new_hp = 160
cat('예측값 : ',-0.06823 * new_hp + 30.09886 )  # 예측값 :  19.18206

new_hp = 70
cat('예측값 : ',-0.06823 * new_hp + 30.09886 )  # 예측값 :  25.32276

# predict() 함수 사용
mynew <- mtcars[c(1,2), ]
mynew <-  edit(mynew)
mynew
pred <- predict(model1, newdata = mynew)
cat('예측값 : ', pred)


# 연습 2 - 다중선형회귀
# 임의의 마력수(hp)와 차체무게(wt)를 입력하면 연비(mpg)는 얼마일까? 이를 위한 모델 작성
# hp, wt : 독립변수(연속형 data), mpg : 종속변수(연속형)   연속형 연속형이면 선형회귀분석을 할 수 있다.

cor(mtcars$hp, mtcars$mpg)  # -0.7761684
cor(mtcars$wt, mtcars$mpg)  # -0.8676594

model2 <- lm(formula = mpg ~ hp + wt, data = mtcars)
model2
# Coefficients:
# (Intercept)           hp           wt  
#   37.22727        -0.03177     -3.87783  
# y = -0.03177 * new_hp + -3.87783 * new_wt + 37.22727 수식 완성

new_hp <- 110;  new_wt <- 2.62
cat('예측값 : ', -0.03177 * new_hp + -3.87783 * new_wt + 37.22727)   # 예측값 :  23.57266

new_hp <- 160;  new_wt <- 5.62
cat('예측값 : ', -0.03177 * new_hp + -3.87783 * new_wt + 37.22727)   # 예측값 :  10.35067

new_hp <- 80;  new_wt <- 1.0
cat('예측값 : ', -0.03177 * new_hp + -3.87783 * new_wt + 37.22727)   # 예측값 :  30.80784

#predict
new_data <- data.frame(hp = 110, wt = 2.62)    # 23.57233 
predict(model2, newdata = new_data)

new_data <- data.frame(hp = 160, wt = 5.62)    # 10.35019 
predict(model2, newdata = new_data)
