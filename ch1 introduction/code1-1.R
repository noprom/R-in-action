age <- c(1, 3, 5, 2, 11, 9, 3, 9, 12, 3)
weight <- c(4.4, 5.3, 7.2, 5.2, 8.5, 7.3, 6.0, 10.4, 10.2, 6.1)
# 平均体重
mean(weight)
# 标准差
sd(weight)
# 月龄和体重之间的相关度
cor(age, weight)
plot(age, weight)