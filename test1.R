va = 3
4 -> va
cat('결과는 ', va)
print(va)
a <- 10
b <- 20


# 데이터 유형
kbs <- 9    #scalar는 지원x, 기본 vector
object.size(kbs)
typeof(kbs)
typeof(3)
typeof(9)
typeof(3.14)
is(kbs)   #데이터 유형 출력
mbc <- as.integer(kbs)  # 형변환
is(kbs)
is(mbc)
typeof(kbs)
typeof(mbc)
mbc <- 9L
is(mbc)

ss <- '홍길동'
typeof(ss)
is(ss)
ss[1]

b <- TRUE
typeof(b)
is(b)
b <- T

# Vector가 기본 값 : character, logical, numeric(integer)

typeof(NA)
aa <- NA   #결측 데이터(값이 입력되지 않은 상태)
aa
is(aa)

sum(2,3)
sum(2,3, NA)  #결측 데이터가 있다면 전체가 NA가 된다.
sum(2, 3, NA, na.rm = T)  # na.rm = na remove na를 제거하고 계산

typeof(NULL)  # 데이터 값이 없음. 값으로 인식X
sum(2,3, NULL)

typeof(NaN) # 수학적으로 정의되지 않은 값
sum(2, 3, NaN)

typeof(Inf)
0 / 0
0 * Inf
Inf - Inf
length(NA)
length(NaN)
length(NULL)

z <- 5.3 - 3i
z
is(z)

f <- function(){
  return('good')
}
f()
is(f)
typeof(f)

# x <- "123.4"
x <-FALSE
cat(mode(x), class(x), typeof(x))

ls.str()
rm(aa)  # 변수 삭제
rm(list=ls()) # 모든 변수 삭제
gc()  #사용이 종료된 객체가 점유하고있던 메모리 해제
