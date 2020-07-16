library(readxl)
#file.choose()
corr <- read_excel("C:\\Users\\User\\Desktop\\informe\\INFORME-1.xlsx",sheet="Hoja1")

View(corr)
attach(corr)
names(corr)
plot(`N-POBREZA` ~ `N-DELINCUENCIA`,main="Diagrama de dispercion entre las variables\n pobreza y delincuencia en VES",xlab="Delincuencia",ylab="Pobreza")
abline(lm(`N-POBREZA` ~ `N-DELINCUENCIA`))

column.pobrezaVES <- as.vector(corr$`N-POBREZA`)
column.delincuenciaVES <- as.vector(corr$`N-DELINCUENCIA`)

newData <- data.frame(column.pobrezaVES,column.delincuenciaVES)
cor(newData)