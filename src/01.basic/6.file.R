##6. file

x = data.frame('이름' = c(' 최한석', '한아름'), '나이' = c(12, 22))

write.csv(x, file = file('user.csv', encoding = 'utf-8'))

y = read.csv('user.csv', head = T, fileEncoding = 'utf-8')


#
install.packages('xlsx')
library(xlsx)

z = read.xlsx('user.xlsx', sheetName = 'user')
z = read.xlsx('user.xlsx', 1)
z
#    name age
# 1  abel  12
# 2 merry  22

write.xlsx(z, file = 'user2.xlsx', sheetName = 'user2')
