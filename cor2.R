  library(readxl)
  #file.choose()
  corr <- read_excel("C:\\Users\\User\\Desktop\\informe\\INFORME-2.xlsx",sheet="Hoja1")
  column.poblacionVES <- as.vector(corr$`POBLACION-VILLA-EL-SALVADOR`)
  column.climaLimaSur <- as.vector(corr$`CLIMA-LIMA-SUR`)
  
  
  View(corr)
  attach(corr)
  names(corr)
  plot(`POBLACION-VILLA-EL-SALVADOR` ~ `CLIMA-LIMA-SUR`,main="Diagrama de dispercion entre las variables\n poblacion de V.E.S y el clima de LIMA SUR",xlab="CLIMA LIMA SUR",ylab="POBLACION V.E.S")
  abline(lm(`POBLACION-VILLA-EL-SALVADOR` ~ `CLIMA-LIMA-SUR`))

  
  newData <- data.frame(column.poblacionVES, column.climaLimaSur)
  cor(newData)