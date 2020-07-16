library(readxl)
#file.choose()
# leer excel ???
table <- read_excel("C:\\Users\\User\\Desktop\\informe\\alumnos.xlsx",sheet="Reporte")
column.age <- as.vector(table$`Edad`)
column.note <- as.vector(table$`Nota`)

# calcular la media de las edades  ???
print(mean(column.age))

# calcular la media de las notas  ???
mean(mean(column.note))




View(table)
attach(table)
names(table)
plot(`Edad` ~ `Nota`,main="Diagrama de dispercion entre las variables\n poblacion de V.E.S y el clima de LIMA SUR",xlab="CLIMA LIMA SUR",ylab="POBLACION V.E.S")
abline(lm(`POBLACION-VILLA-EL-SALVADOR` ~ `CLIMA-LIMA-SUR`))


newData <- data.frame(column.poblacionVES, column.climaLimaSur)
cor(newData)

View(table)