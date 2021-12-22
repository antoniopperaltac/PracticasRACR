# Tema 4
# Estructuras de Datos

# #data frame
# 
# gato<-data.frame(color=c("mixto","negro", "atigrado"),
#                  peso=c(2.1,5.0,3.2),
#                  le_gusta_cuerda=c(1,0,1))
# gato

gato<-read.csv(file="data/feline-data.csv")

gato$peso
gato$color
gato$le_gusta_cuerda
gato$peso + 2

paste("El Color del gato es", gato$color)
gato$peso + gato$color

class(gato$color)
class(gato$peso)
class(gato)

# Vectores y Coercion de Tipos
str(gato$peso)

mi_vector<-c(2,6,3)
mi_vector
str(mi_vector)

# Coercion
otro_vector<- c(2,6,'3')
vector_coercion <- c('a', TRUE)
str(vector_coercion)
otro_vector_coercion <- c(0,TRUE)
str(otro_vector_coercion)

vector_caracteres <- c('0','2','4')
str(vector_caracteres)

caracteres_coercionados_numerico <- as.numeric(vector_caracteres)
caracteres_coercionados_numerico

numerico_coercionado_logico <- as.logical(caracteres_coercionados_numerico)
numerico_coercionado_logico

gato$le_gusta_cuerda
class(gato$le_gusta_cuerda)

gato$le_gusta_cuerda <- as.logical(gato$le_gusta_cuerda)
gato$le_gusta_cuerda
str(gato$le_gusta_cuerda)

gatos <- as.logical(gato$le_gusta_cuerda)
gatos
str(gatos)
class(gatos)

ab<- c('a','b')
ab

abc <- c(ab,'c')
abc

# Crear o Generar Serie de numeros
mySerie <-1:5
mySerie
str(mySerie)
class(mySerie)

# Nombrar los elementos de un vector
names(mySerie) <- c("a","b","c","d","e")
mySerie
str(mySerie)
class(mySerie)

# Desafio 1
vectnum <-1:26
vectnum
vectresult <- vectnum*2
vectresult
names(vectresult) <-c(LETTERS)
vectresult

# Factores
str(gato$color)

capas<- c('atigrado','toirtoiseshell', 'toirtoiseshell','negro','atigrado')
capas
str(capas)

# Convertir vector en factor
categorias <- factor(capas)
class(categorias)
str(categorias)
class(capas)
class(categorias)

# Desafio 2
gato
?read.csv

# Solucion 1
gato<-read.csv(file="data/feline-data.csv", stringsAsFactors = FALSE)
str(gato$color)

# Solucion 2
gato<- read.csv(file="data/feline-data.csv", colClasses =c(NA,NA,"character") )
str(gato$color)

# Especificando el Orden en los Factores
misdatos <- c("caso","control","control","caso")
factor_orden <- factor(misdatos, levels=c("control","casos"))
str(factor_orden)

# Listas
lista <- list(1,"a",TRUE,1+4i)
lista

otra_lista <- list(title= "Numbers", numbers = 1:10, data= TRUE)
otra_lista

###
typeof(gato)
gato[1,]
typeof(gato[1,])
str(gato[1,])

# Desafio 3
typeof(gato[1])
typeof(gato[[1]])
typeof(gato$color)
typeof(gato["color"])
typeof(gato[1, 1])
typeof(gato[, 1])
typeof(gato[1,])

# Matrices
matrix_ejemplo <- matrix(0, ncol = 6, nrow = 3)
matrix_ejemplo

class(matrix_ejemplo)
typeof(matrix_ejemplo)
str(matrix_ejemplo)
dim(matrix_ejemplo)
nrow(matrix_ejemplo)
ncol(matrix_ejemplo)

# Desafio 4
length(matrix_ejemplo)
# length proporciona la cantidad total de elementos en la matriz.

# Desafio 5
matrix50num <- matrix(1:50, ncol = 5, nrow = 10)
matrix50num

matrix50numByRows <- matrix(1:50, ncol = 5, nrow = 10, byrow = TRUE)
matrix50numByRows  
