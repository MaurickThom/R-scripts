library(readxl)
#file.choose()
# leer excel ???
# https://rpubs.com/osoramirez/93049
# https://bookdown.org/jboscomendoza/r-principiantes4/graficas-de-barras.html

table <- read_excel("C:\\Users\\User\\Desktop\\informe\\alumnos.xlsx",sheet="Reporte")
column.age <- as.vector(table$`Edad`)
column.note <- as.vector(table$`Nota`)

# calcular la media aritmetica de las edades
print(mean(column.age))

# calcular la media aritmeticade las notas
mean(mean(column.note))

min(column.age)
min(column.note)



View(table)
attach(table)
names(table)
plot(`Edad` ~ `Nota`,main="Diagrama de dispercion entre las variables\n Edad y nota",xlab="Nota",ylab="Edad")
abline(lm(`Edad` ~ `Nota`))


newData <- data.frame(column.age, column.note)
cor(newData)

View(table)