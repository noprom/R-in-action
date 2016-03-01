# 从CSV文件读取数据
grades <- read.table("/Users/noprom/Documents/Dev/R/Pro/R in Action/ch2 dataset/studentgrades.csv", 
                     header = TRUE, row.names="StudentID", sep = ",")
grades
str(grades)

grades <- read.table("/Users/noprom/Documents/Dev/R/Pro/R in Action/ch2 dataset/studentgrades.csv", 
                     header=TRUE,row.names="StudentID", sep=",",
                     colClasses=c("character", "character", "character",
                                  "numeric", "numeric", "numeric"))
grades
str(grades)

# 读取儿童医院的数据
# 遗憾的是，数据又被截断了
kidGrades <- read.table("/Users/noprom/Documents/Dev/R/Pro/R in Action/ch2 dataset/records.csv",
                        header = TRUE, sep = ",")
kidGrades
str(kidGrades)
