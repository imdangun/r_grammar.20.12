##
setwd('C:/DEV/git/r_grammar.20.12/r_grammar.20.12/src/01.basic')

getwd()

# lib 디렉토리를 먼저 만든다.
.libPaths('C:\\DEV\\git\\r_grammar.20.12\\r_grammar.20.12\\lib')

install.packages('animation')

library(animation)


##
ls() # [1] "iris" "t1"   "t2"   "x"    "y"  

rm(iris)
ls() # [1] "t1" "t2" "x"  "y" 

rm(list = ls())
ls() # character(0)


## option
options()

options(digits = 3)
print(1.2345) # [1] 1.23

options(prompt = '>>')


##
history(max.show = Inf)

savehistory(file = 'myhistory.txt')

loadhistory(file = 'myhistory.txt')

sink(file = 'out.txt', append = T)
print('hello') # out.txt 에 hel
sink() # 화면 출력
print('world')


## 도움말
help(cor)

?cor

apropos('cor')
# [1] ".rs.recordAnyTraceback"        ".rs.recordFunctionInformation"
# [3] ".rs.recordHtmlWidget"          ".rs.recordTraceback"
# ...

RSiteSearch('cor') # 브라우저에 검색 결과 출력
