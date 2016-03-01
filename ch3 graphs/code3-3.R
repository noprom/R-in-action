# plot绘图时定制特定属性的值
opar <- par(no.readonly=TRUE)
par(lty=2, pch=17)
plot(dose, drugA, type="b")
par(opar)

# 也可以将参数的值直接放到括号中
plot(dose, drugA, type="b", lty=2, pch=17)

# 3.3.1 Symbols and lines
plot(dose, drugA, type="b", lty=3, lwd=3, pch=15, cex=2)

# 3.3.2 Colors
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

# 3.3.3 Text characteristics
par(font.lab=3, cex.lab=1.5, font.main=4, cex.main=2)

# 3.3.4 Graph and margin dimensions
par(pin=c(4,3), mai=c(1,.5, 1, .2))

# To sum up
dose  <- c(20, 30, 40, 45, 60)
drugA <- c(16, 20, 27, 40, 60)
drugB <- c(15, 18, 25, 31, 40)
opar <- par(no.readonly=TRUE)
par(pin=c(2, 3))
par(lwd=2, cex=1.5)
par(cex.axis=.75, font.axis=3)
plot(dose, drugA, type="b", pch=19, lty=2, col="red")
plot(dose, drugB, type="b", pch=23, lty=6, col="blue", bg="green")
par(opar)