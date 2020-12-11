#4.function

## 1. math function
x = c(5.415, -5.415)

ceiling(x) # [1]  6 -5

floor(x) # [1]  5 -6

trunc(x) # [1]  5 -5

round(x, 2) # [1]  5.42 -5.42

signif(x, 3) # [1]  5.42 -5.42

round(sqrt(1:10), 3) #  [1] 1.000 1.414 1.732 2.000 2.236 2.449 2.646 2.828 3.000 3.162


## 2. statistics function
# na.ram
(x = c(1:3, NA)) # [1]  1  2  3 NA

mean(x) # [1] NA

mean(x, na.rm = T) # [1] 2

quantile(x) # Error in quantile.default(x)

quantile(x, na.rm = T)
#  0%  25%  50%  75% 100% 
# 1.0  1.5  2.0  2.5  3.0


# parameter (...,  ) (x, ...)
x = 1:3; y = 4:6

sum(x, y) # [1] 21

mean(x, y) # error

mean(c(x, y)) # [1] 3.5


# 비슷해 보이지만 다른 함수
min(x, y) # [1] 1

pmin(x, y) # [1] 1 2 3, index 별 최소치


# cum~() 누적
cumsum(x) # [1] 1 3 6

cumprod(x) # [1] 1 2 6, 누적곱

cummin(c(3:1, 2:0)) # [1] 3 2 1 1 1 0

cummax(c(3:1, 2:0)) # [1] 3 3 3 3 3 3

#
diff(c(1, 5, 2)) # [1]  4 -3, 차이 = 뒷 데이터 - 앞 데이터


## 3. table function
x = mtcars; names(x)
# [1] "mpg"  "cyl"  "disp" "hp"   "drat" "wt"   "qsec" "vs"   "am"   "gear" "carb"

(t1 = table(x$cyl))
#  4  6  8 
# 11  7 14 ,   4기통 11개, 6기통 7개, 8기통 14개

(t2 = table(x$am, x$cyl))
#    4  6  8
# 0  3  4 12
# 1  8  3  2,   0 수동, 1 자동

addmargins(t1) # Sum을 추가한다.
#  4   6   8 Sum 
# 11   7  14  32

addmargins(t2)
#      4  6  8 Sum
# 0    3  4 12  19
# 1    8  3  2  13
# Sum 11  7 14  32

prop.table(t2) # 도수비율
#         4       6       8
# 0 0.09375 0.12500 0.37500
# 1 0.25000 0.09375 0.06250

addmargins(prop.table(t2))
#           4       6       8     Sum
# 0   0.09375 0.12500 0.37500 0.59375
# 1   0.25000 0.09375 0.06250 0.40625
# Sum 0.34375 0.21875 0.43750 1.00000


##4. string function
x = c(123, 456); x # [1] 123 456
substr(x, 1, 2) # [1] "12" "45"

(x = as.character(x)) # [1] "123" "456"
substr(x, 1, 2) # [1] "12" "45"

substring('hello', 1:5, 1:5) # [1] "h" "e" "l" "l" "o"

substr('hello', 1:5, 2:5) # [1] "he",  첫 원소만 적용한다.

#
x = c('최한석', '한아름', '최인한')

grep('최', x) # [1] 1 3

grepl('최', x) # [1]  TRUE FALSE  TRUE

grep('최', x, value = T) # [1] "최한석" "최인한"

#
x = c('최한석최', '한아름', '최인한최')
sub('최', '박', x) # [1] "박한석최" "한아름"   "박인한최"

x = c('최한석최', '한아름', '최인한최')
gsub('최', '박', x) # [1] "박한석박" "한아름"   "박인한박"

#
strsplit(x, ' ') # list 로 변환한다.
# [[1]]
# [1] "최한석최"
# 
# [[2]]
# [1] "한아름"
# 
# [[3]]
# [1] "최인한최"

##5. probability distribution function
# d~ : 확률분표
# p~ : 누적확률
# q~ : 분위수
# r~ : 확률변수(난수) 생성 함수


