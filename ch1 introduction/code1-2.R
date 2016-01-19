setwd("/Users/noprom/Documents/Dev/R/Pro/R in Action/ch1 introduction")
options()
options(digits = 3)
# 创建一个包含20个均匀分布随机变量的向量
x <- runif(3)
# 摘要统计量
summary(x)
# 直方图
hist(x)
# 命令的历史记录保存到文 件.Rhistory中,工作空间(包含向量x)保存到文件.RData中
savehistory()
save.image()