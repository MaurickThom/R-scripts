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
plot(`Edad` ~ `Nota`,main="Diagrama de dispercion entre las variables\n Edad y nota",xlab="edad",ylab="nota")
abline(lm(`Edad` ~ `Nota`))


newData <- data.frame(column.age, column.note)
cor(newData)

View(table)