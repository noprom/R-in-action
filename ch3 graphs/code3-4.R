# 3.4 Adding text, customized axes, and legends
plot(dose, drugA, type="b",
     col="red", lty=2, pch=2, lwd=2,
     main="Clinical Trials for Drug A",
     sub="This is hypothetical data",
     xlab="Dosage", ylab="Drug Response",
     xlim=c(0, 60), ylim=c(0, 70))

# 3.4.1 Titles
title(main="My Title", col.main="red",
      sub="My Subtitle", col.sub="blue",
      xlab="My X label", ylab="My Y label",
      col.lab="green", cex.lab=0.75)

# 3.4.2 Axes
# axis(side, at=, labels=, pos=, lty=, col=, las=, tck=, ...)
# custom axes

# Specifies data 
x <- c(1:10)
y <- x
z <- 10/x
opar <- par(no.readonly=TRUE)
# Increases margins
par(mar=c(5, 4, 4, 8) + 0.1)
# Plots x vs. y, suppressing annotations
plot(x, y, type="b",
     pch=21, col="red",
     yaxt="n", lty=3, ann=FALSE)

# Adds an x versus 1/x line
lines(x, z, type="b", pch=22, col="blue", lty=2)
# Draws the axes
axis(2, at=x, labels=x, col.axis="red", las=2)
axis(4, at=z, labels=round(z, digits=2),
     col.axis="blue", las=2, cex.axis=0.7, tck=-.01)
mtext("y=1/x", side=4, line=3, cex.lab=1, las=2, col="blue")
# Adds titles and text
title("An Example of Creative Axes",
      xlab="X values",
      ylab="Y=X")
par(opar)