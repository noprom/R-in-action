# plot绘图时定制特定属性的值
opar <- par(no.readonly=TRUE)
par(lty=2, pch=17)
plot(dose, drugA, type="b")
par(opar)

# 也可以将参数的值直接放到括号中
plot(dose, drugA, type="b", lty=2, pch=17)

# Symbols and lines
plot(dose, drugA, type="b", lty=3, lwd=3, pch=15, cex=2)

# Colors
install.packages("RColorBrewer")

library(RColorBrewer)
# case 1:
n <- 7
mycolors <- brewer.pal(n, "Set1")
barplot(rep(1,n), col=mycolors)
display.brewer.all()

# case 2:
n <- 10
mycolors <- rainbow(n)
pie(rep(1, n), labels=mycolors, col=mycolors)
mygrays <- gray(0:n/n)
pie(rep(1, n), labels=mygrays, col=mygrays)
