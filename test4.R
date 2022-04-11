# 데이터 입출력
n <- scan()   # 키보드로 자료 입력
sum(1:n)

ss <- scan(what = "")  #문자열 입력
ss


df <- data.frame()
df <- edit(df)
df


# 파일 읽기
student <- read.table("testdata/student.txt")
student
is(student)

student2 <- read.table("testdata/student2.txt", sep=";", header = TRUE, skip = 2) #header는 자료로 취급X, 2행까지만 출력 
student2

student3 <- read.table("testdata/student3.txt", sep=" ", header = TRUE, na.strings = '-') # 
student3

student4 <- read.table("testdata/student4.txt", sep=",", header = TRUE, na.strings = '-') # 
student4

student5 <- read.csv("testdata/student4.txt", header = TRUE, na.strings = '-') # ,로 구분되어있는 파일은 csv로 열 수 있다.
student5

install.packages("xlsx")
library(xlsx)
student6 <- read.xlsx(file = "testdata/student.xlsx", sheetIndex = 1) # exel 파일 출력
student6

#---------------------------------------------------
# 데이터 출력
x <- 10; y <- 20; z <- x * y
cat("결과는 ", z, '입니다.')
print(z)

# 파일로 출력
name <- c("관우", "장비", "유비")
age <- c(35, 33, 25)
gender <- c("남","남","여")
myframe <-  data.frame(name, age, gender)
myframe

write.table(myframe, "output/my1.txt", fileEncoding = "UTF-8")  #파일 저장
write.table(myframe, "output/my2.txt",row.names = TRUE, fileEncoding = "UTF-8")
write.table(myframe, "output/my3.txt",row.names = FALSE, fileEncoding = "UTF-8")
write.table(myframe, "output/my4.txt",row.names = FALSE, quote = F,fileEncoding = "UTF-8")

write.csv(myframe, "output/my5.csv", quote = F, row.names = F,fileEncoding = "UTF-8") # csv 파일로 저장 

write.xlsx(myframe, "output/my6.xlsx", sheetName = 'sheet1')  #엑셀로 저장 

# --------------------------------------------------
# 돗수 분포표
df <- read.csv("testdata/ex_studentlist.csv")
df
str(df)
summary(df) # 요약

# 명목형 자료로 돗수분포표 : gender, bloodtype
freq <- table(df$bloodtype) # 빈도수
freq

rfreq <- prop.table(freq)  # 상대도수(비율로 출력)
rfreq

rtable <- rbind(freq, rfreq)
rtable

rtable <- addmargins(rtable, margin = 1)  # 소계가 들어감 margin = 1 : 열의 합을 표시 margin = 2 : 행의 합을 표시 
rtable
