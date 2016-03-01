# 用R绘图
# save the graph as a PDF document named mygraph.pdf 
# in the current working directory:
pdf("mygraph.pdf")
attach(mtcars)
# opens a graphics window and generates a scatter plot between automobile 
# weight on the hori- zontal axis and miles per gallon on the vertical axis
plot(wt, mpg)
# adds a line of best fit.
abline(lm(mpg~wt))
# adds a title
title("Regression of MPG on Weight")
# detaches the data frame.
detach(mtcars)
dev.off()