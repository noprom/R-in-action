# plot绘图时定制特定属性的值
opar <- par(no.readonly=TRUE)
par(lty=2, pch=17)
plot(dose, drugA, type="b")
par(opar)

# 也可以将参数的值直接放到括号中
plot(dose, drugA, type="b", lty=2, pch=17)