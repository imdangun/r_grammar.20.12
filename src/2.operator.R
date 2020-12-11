#2. operator

##1. 할당 연산자
a = 1


##2. 산술 연산자
a = 1 + 2; a # 3
a = 1 - 2; a # -1
a = 1 * 2; a # 2
a = 5 / 2; a # 2.5
a = 5 %/% 2; a # 2
a = 5 %% 2; a # 1
a = 2^2; a # 4

# vector 연산
a = 1:10; b = 1:5; c = 1:4
a + b # 2  4  6  8 10  7  9 11 13 15
a + c 
# 2  4  6  8  6  8 10 12 10 12
# In a + c : 두 객체의 길이가 서로 배수관계에 있지 않습니다

# matrix 연산
x = matrix(1:12, 3, 4, byrow=T); x
#      [,1] [,2] [,3] [,4]
# [1,]    1    2    3    4
# [2,]    5    6    7    8
# [3,]    9   10   11   12

x = matrix(1:12, 3, 4); x
#      [,1] [,2] [,3] [,4]
# [1,]    1    4    7   10
# [2,]    2    5    8   11
# [3,]    3    6    9   12

# vecotr + matrix
a + x
#      [,1] [,2] [,3] [,4]
# [1,]    2    8   14   20
# [2,]    4   10   16   12
# [3,]    6   12   18   14
# 경고메시지(들): 
#   In a + x : 두 객체의 길이가 서로 배수관계에 있지 않습니다

c + x
#      [,1] [,2] [,3] [,4]
# [1,]    2    8   10   12
# [2,]    4    6   12   14
# [3,]    6    8   10   16

# matrix + matrix
x
#      [,1] [,2] [,3] [,4]
# [1,]    1    4    7   10
# [2,]    2    5    8   11
# [3,]    3    6    9   12

y = matrix(1:12, 3, 4); y
#      [,1] [,2] [,3] [,4]
# [1,]    1    4    7   10
# [2,]    2    5    8   11
# [3,]    3    6    9   12

x + y
#      [,1] [,2] [,3] [,4]
# [1,]    2    8   14   20
# [2,]    4   10   16   22
# [3,]    6   12   18   24


##3. 비교 연산자
a = 1 > 2; a # FALSE
a = 1 < 2; a # TRUE
a = 1 == 1; a # TRUE
a = 1 >=2; a # FALSE
a = 1 <= 2; a # TRUE
a = 1 != 2; a # TRUE


a = 1:10; b = 1:5; c = 1:4

# vector 비교 vector
a > b # FALSE FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE

a > c 
# FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
# In a > c : 두 객체의 길이가 서로 배수관계에 있지 않습니다

# vector 비교 matrix
x
#      [,1] [,2] [,3] [,4]
# [1,]    1    4    7   10
# [2,]    2    5    8   11
# [3,]    3    6    9   12

a >= x
#      [,1] [,2] [,3]  [,4]
# [1,] TRUE TRUE TRUE  TRUE
# [2,] TRUE TRUE TRUE FALSE
# [3,] TRUE TRUE TRUE FALSE
# 경고메시지(들): 
#   In a >= x : 두 객체의 길이가 서로 배수관계에 있지 않습니다

c <= x
#      [,1] [,2] [,3] [,4]
# [1,] TRUE TRUE TRUE TRUE
# [2,] TRUE TRUE TRUE TRUE
# [3,] TRUE TRUE TRUE TRUE

# matrix 비교 matrix
y
#      [,1] [,2] [,3] [,4]
# [1,]    1    4    7   10
# [2,]    2    5    8   11
# [3,]    3    6    9   12

x >= y
#      [,1] [,2] [,3] [,4]
# [1,] TRUE TRUE TRUE TRUE
# [2,] TRUE TRUE TRUE TRUE
# [3,] TRUE TRUE TRUE TRUE


##4. 논리 연산자
T & T # TRUE
T | F # TRUE
!T # FALSE

a = 0; b = 0
(a = 1 > 2) & (b = 1 > 2)
a # FALSE
b # FALSE

a = 0; b = 0
(a = 1 > 2) && (b = 1 > 2)
a # FALSE
b # 0

a = 0; b = 0
(a = 2 > 1) | (b = 2 > 1)
a # TRUE
b # TRUE

a = 0; b = 0
(a = 2 > 1) || (b = 2 > 1)
a # TRUE
b # 0

a = c(T, T, F, F)
b = c(T, F)
c = c(T, F, F)

a & b # TRUE FALSE FALSE FALSE

a & c
# TRUE FALSE FALSE FALSE
# In a & c : 두 객체의 길이가 서로 배수관계에 있지 않습니다

a | b # TRUE  TRUE  TRUE FALSE

a | c
# TRUE  TRUE FALSE  TRUE
#   In a | c : 두 객체의 길이가 서로 배수관계에 있지 않습니다

# 첫번째 원소에 대해서만 계산한다.
a && c # TRUE
a || c # TRUE


##5. 특수 연산자
a = 1:3; a # 1 2 3
a = 3:1; a # 3 2 1

a = 1:2; b = 1:4; c = 2:4
a %in% b # TRUE TRUE
a %in% c # FALSE  TRUE

a = 1:2; b = 1:2;
# inner product = scalar product = dot product
a %*% b 
#      [,1]
# [1,]    5

# outer product = cross product
a %o% b
#      [,1] [,2]
# [1,]    1    2
# [2,]    2    4

#
a = 1:1e7; length(a)

#
x = matrix(1:6, 2, 3); x
#      [,1] [,2] [,3]
# [1,]    1    3    5
# [2,]    2    4    6

y = matrix(1, 3, 4); y
#      [,1] [,2] [,3] [,4]
# [1,]    1    1    1    1
# [2,]    1    1    1    1
# [3,]    1    1    1    1

x %*% y
#      [,1] [,2] [,3] [,4]
# [1,]    9    9    9    9
# [2,]   12   12   12   12

# 홀수 추려내기
x = 11:20
x[c(1, 3, 5, 7, 9)] # 11 13 15 17 19
x[c(T, F)]          # 11 13 15 17 19
x[x %% 2 == 1]      # 11 13 15 17 19
x[-c(2, 4, 6, 8, 10)] # 11 13 15 17 19
x[!c(F, T)]           # 11 13 15 17 19
x[!(x %% 2 == 0)]     # 11 13 15 17 19