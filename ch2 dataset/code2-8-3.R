# 从xlsx读取数据
# 需要下载几个包:xlsxjars,rJava
install.packages("rJava")
install.packages("xlsx")
library(xlsx)
workbook <- "/Users/noprom/Documents/Dev/Java/Pro/Medical/doc/gene/ratio/read_by_poi.xlsx"
mydataframe <- read.xlsx(workbook, 1)
