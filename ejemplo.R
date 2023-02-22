#cargamos el archivo excel
library(readxl)
data1 <- read_excel("data1.xlsx")
#View(data1)
#ponemos los datos en un tipo frame
data <- data.frame(data1)
#mostramos los datos en pantalla
data
#x <- runif(1000) esto genera 1000 datos aleatorios
#Solo tomamos la columna que nos interesa
x <-data$x
#mostramos datos
x
#Le pedimos a R que nos encuentre un número de clase
k <- nclass.Sturges(x)

#separamos los valores x en k intervalos de clase

intervalos <- cut(x,breaks = k)
#calculamos las frecuencias absolutas,

FA <- table(intervalos)
FA
barplot(FA)
#frecuencias relativas
FR <- table(intervalos)/length(x)
FR
barplot(FR)
#hist(x)