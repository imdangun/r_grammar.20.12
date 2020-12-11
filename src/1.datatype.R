#1. datatype

## boolean
a = c(T, F, F, T); a # [1]  TRUE FALSE FALSE  TRUE
typeof(a) # "logical"

## integer
a = 1:5; a #  1 2 3 4 5
typeof(a) # "integer"

## double
a = c(1.2, 3.4); a # 1.2 3.4
typeof(a) # "double"

## complex(복소수)
a = c(1+2i, 3+4i); a # 1+2i 3+4i
typeof(a) # "complex"

## character
a = letters[1:4]; a # "a" "b" "c" "d"
typeof(a) # "character"

## factor
a = as.factor(a); a # Levels: a b c d
typeof(a) # "integer"



## boolean, integer = double
a = c(T, 1); a # 1 1
typeof(a) # "double"

## integer, double = double
a = c(1, 1.0); a # 1 1
typeof(a) # "double"

## double, complex = complex
a = c(1.0, 1+2i); a # 1+0i 1+2i
typeof(a) # "complex"

## complex, character = character
a = c(1+2i, 'hello'); a # "1+2i"  "hello"
typeof(a) # "character"

## boolean, factor = integer
a = c(T, as.factor('hello')); a # 1 1
typeof(a) # "integer"

## double, factor = double
a = c(1.0, as.factor('hello')); a # 1 1
typeof(a) # "double"

## character, factor = character
a = c('world', as.factor('hello')); a # "world" "1"
typeof(a) # "character"



## collection type
## vector
# - c() 로 만든다.
# - 같은 datatype 원소로 구성한다.
x1 = c(1, 2, 3); x1 # 1 2 3

## matrix
# - 같은 datatype 원소로 구성한다.
# - 2차원이다.
x2 = matrix(1:6, 2, 3); x2
#       [,1] [,2] [,3]
# [1,]    1    3    5
# [2,]    2    4    6

## array
# - 같은 datatype 원소로 구성한다.
# - 2차원 이상이다.
x3 = array(1:12, c(2, 3, 2)); x3
# , , 1
# 
#       [,1] [,2] [,3]
# [1,]    1    3    5
# [2,]    2    4    6
# 
# , , 2
# 
#       [,1] [,2] [,3]
# [1,]    7    9   11
# [2,]    8   10   12

## dataframe
# - 각 열마다 다른 datatype, 같은 길이의 vector 로 구성한다.
x4 = data.frame(a = 1:3, b = letters[1:3], c = as.factor(1:3)); x4
#   a b c
# 1 1 a 1
# 2 2 b 2
# 3 3 c 3

## list
# - 다른 datatype, 다른 길이의, 다른 collection 으로 구성한다.
y = list(x1, x2, x3, x4); y
# [[1]]
# [1] 1 2 3
# 
# [[2]]
#       [,1] [,2] [,3]
# [1,]    1    3    5
# [2,]    2    4    6
# 
# [[3]]
# , , 1
# 
#       [,1] [,2] [,3]
# [1,]    1    3    5
# [2,]    2    4    6
# 
# , , 2
# 
#       [,1] [,2] [,3]
# [1,]    7    9   11
# [2,]    8   10   12
# 
# 
# [[4]]
#   a b c
# 1 1 a 1
# 2 2 b 2
# 3 3 c 3