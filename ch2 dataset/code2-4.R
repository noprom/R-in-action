patientId <- c(1, 2, 3, 4)
age <- c(25, 34, 28, 52)
diabetes <- c("Type1", "Type2", "Type1", "Type1")
status <- c("Poor", "Improved", "Excellent", "Poor")
patientData <- data.frame(patientId, age, diabetes, status)
patientData
patientData[1:2]
patientData[c("diabetes", "status")]
patientData$age

# table
table(patientData$diabetes, patientData$status)
