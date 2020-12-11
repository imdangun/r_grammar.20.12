#3.data_function

str(iris)
# 'data.frame':	150 obs. of  5 variables:
#   $ Sepal.Length: num  5.1 4.9 4.7 4.6 5 5.4 4.6 5 4.4 4.9 ...
# $ Sepal.Width : num  3.5 3 3.2 3.1 3.6 3.9 3.4 3.4 2.9 3.1 ...
# $ Petal.Length: num  1.4 1.4 1.3 1.5 1.4 1.7 1.4 1.5 1.4 1.5 ...
# $ Petal.Width : num  0.2 0.2 0.2 0.2 0.2 0.4 0.3 0.2 0.2 0.1 ...
# $ Species     : Factor w/ 3 levels "setosa","versicolor",..: 1 1 1 1 1 1 1 1 1 1 ...

class(iris) # [1] "data.frame"

names(iris) # [1] "Sepal.Length" "Sepal.Width"  "Petal.Length" "Petal.Width"  "Species"

length(iris) # [1] 5

#
x = c(1, 2, 3)

length(x) # [1] 3

class(x) # [1] "numeric"

names(x) = letters[1:length(x)]; x
# a b c 
# 1 2 3

names(x) # [1] "a" "b" "c"

#
x = c(1, 2, 3); y = 4:6
c(x, y) # [1] 1 2 3 4 5 6

z = 7:9
cbind(x, y, z)
#      x y z
# [1,] 1 4 7
# [2,] 2 5 8
# [3,] 3 6 9

rbind(x, y, z)
#   [,1] [,2] [,3]
# x    1    2    3
# y    4    5    6
# z    7    8    9

ls() # [1] "x" "y" "z"

rm(x, y); ls() # [1] "z"

rm(list = ls()); ls() # character(0)

#
seq(1, 9, 2) # [1] 1 3 5 7 9

seq(1, 5.5, length=10) # [1] 1.0 1.5 2.0 2.5 3.0 3.5 4.0 4.5 5.0 5.

seq(1, by=0.5, length=10) # [1] 1.0 1.5 2.0 2.5 3.0 3.5 4.0 4.5 5.0 5.5

rep(1:3, 4) # [1] 1 2 3 1 2 3 1 2 3 1 2 3

rep(1:3, each=4) # [1] 1 1 1 1 2 2 2 2 3 3 3 3

cut(0:10, 5)
# [1] (-0.01,2] (-0.01,2] (-0.01,2] (2,4]     (2,4]     (4,6]     (4,6]     (6,8]    
# [9] (6,8]     (8,10]    (8,10]   
# Levels: (-0.01,2] (2,4] (4,6] (6,8] (8,10]

#
x = c(30, 20, 40, 10)

sort(x) # [1] 10 20 30 40

sort(x, decreasing = T) # [1] 40 30 20 10

order(x) # [1] 4 2 1 3 # 가장 작은 10이 4 index 에 있다.
x[order(x)] # [1] 10 20 30 40

order(x, decreasing = T) # [1] 3 1 2 4


# matrix
(x = matrix(1:15, nrow = 3, ncol = 5))
#      [,1] [,2] [,3] [,4] [,5]
# [1,]    1    4    7   10   13
# [2,]    2    5    8   11   14
# [3,]    3    6    9   12   15

rownames(x) = letters[1:3]
colnames(x) = paste0('col', 1:5); x
#   col1 col2 col3 col4 col5
# a    1    4    7   10   13
# b    2    5    8   11   14
# c    3    6    9   12   15

x[, 4]
#  a  b  c 
# 10 11 12 

x[-c(1, 3), ]
# col1 col2 col3 col4 col5 
#    2    5    8   11   14

x[c('a', 'c'), ]
#   col1 col2 col3 col4 col5
# a    1    4    7   10   13
# c    3    6    9   12   15

x[c(1, 3), 2:5]
#   col2 col3 col4 col5
# a    4    7   10   13
# c    6    9   12   15

x[c('a', 'c'), 2:5]
#   col2 col3 col4 col5
# a    4    7   10   13
# c    6    9   12   15

x$col1 # Error in x$col1 : $ operator is invalid for atomic vectors


# dataframe
x = data.frame(col1 = letters[1:3], col2 = 1:3, col3 = (1:3 %% 3) == 0); x
#    col1 col2  col3
# 1     a    1 FALSE
# 2     b    2 FALSE
# 3     c    3  TRUE

names(x) = c('요인', '숫자', '논리'); str(x)
# 'data.frame':	3 obs. of  3 variables:
# $ 요인: Factor w/ 3 levels "a","b","c": 1 2 3
# $ 숫자: int  1 2 3
# $ 논리: logi  FALSE FALSE TRUE

x[c(1, 3), ]
#   요인 숫자  논리
# 1    a    1 FALSE
# 3    c    3  TRUE

x[c(2, 3)]
#   숫자  논리
# 1    1 FALSE
# 2    2 FALSE
# 3    3  TRUE

mean(x$숫자) # [1] 2


# list
x = list(c1 = letters[1:3], c2 = 1:3, c3 = (1:3 %% 3 == 0)); str(x)

x[c(1, 3)]
# $c1
# [1] "a" "b" "c"
# 
# $c3
# [1] FALSE FALSE  TRUE

x[c('c1', 'c3')]
# $c1
# [1] "a" "b" "c"
# 
# $c3
# [1] FALSE FALSE  TRUE

x$c2 # [1] 1 2 3


# dataframe function
x = data.frame(id = 1:3, name = c('최한석', '한아름', '양승일'), 
               class = c('A', 'B', 'B'))
y = data.frame(id = 1:3, age = c(12, 10, 13), gender = c('M', 'W', 'M'))

cbind(x, y)
#    id   name class id age gender
# 1  1 최한석     A  1  12      M
# 2  2 한아름     B  2  10      W
# 3  3 양승일     B  3  13      M

x[order(x[2]), ]
#   id   name class
# 3  3 양승일     B
# 1  1 최한석     A
# 2  2 한아름     B

aggregate(y$age, by = list(y[[3]]), FUN = mean)
#   Group.1    x
# 1       M 12.5
# 2       W 10.0

merge(x, y, by = 'id')
#   id   name class age gender
# 1  1 최한석     A  12      M
# 2  2 한아름     B  10      W
# 3  3 양승일     B  13      M

#
data() # dataset 목록을 조회한다.