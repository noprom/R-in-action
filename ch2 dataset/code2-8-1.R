# 从键盘读入数据
mydata <- data.frame(age = numeric(0), gender = character(0), weight = numeric(0))
mydata <- edit(mydata)

# 直接输入值，不用弹出窗口
mydatatxt <- "
age gender weight
25 m 166
30 f 115
18 f 120
"
mydata <- read.table(header=TRUE, text=mydatatxt)
mydata
