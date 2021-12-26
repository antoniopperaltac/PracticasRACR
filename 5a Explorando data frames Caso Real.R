# CASO REAL

# Decargar archivo directamente y dirigirlo a folder data
# download.file("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder-FiveYearData.csv", 
#              destfile = "data/gapminder-FiveYearData.csv")

# Cargar archivo a memoria
# Utilizar Funcion de Leer Archivo tipo CSV (Comma Separated Values)
# gapmimder <- read.csv(file="data/gapminder-FiveYearData.csv")

# USA FUNCION source() para EJECUTAR un SCRIPT 
source(file = "scripts/load-gapminder.R")
#----------------------------------------------------


# OTRA OPCION de hacer eso
#--------------------------------------
# LEER DIRECTAMENTE DESDE LA WEB (sin descargar o leer local)
# gapminder <- read.csv("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder-FiveYearData.csv")
# Si sigues esta opcion, no tendrás una copia local del archivo csv en tu PC.
# COn la FUNCION readxl podrias leer un archivo de Excel directamente.
#--------------------------------------
  
# COMO LUCE EL CONJUNTO DE DATOS (dataset): str()
#-------------------------------------------------
# Tipo de objeto
# cantidad de observaciones (FILAS)
# cantidad de variables (COLUMNAS)
# identificadores (TITULOS de cada COLUMNA)
# Una MUESTRA de las 1ras 10 observaciones (FILAS)
#-------------------------------------------------
str(gapmimder)

# Revisar 1 columna especifica: typeof() / str()
#-------------------------------------------------
typeof(gapmimder$year)
typeof(gapmimder$country)
typeof(gapmimder$lifeExp)
str(gapmimder$country)
str(gapmimder$lifeExp)

# Tipo de objeto
#-------------------------------------------------
typeof(gapmimder)

# El largo data frame = a su número de columnas
#-------------------------------------------------
length(gapmimder)

# Cantidad total de columnas
#-------------------------------------------------
ncol(gapmimder)

# Cantidad total de filas
#-------------------------------------------------
nrow(gapmimder)

# Cantidad total de filas y columnas
#-------------------------------------------------
dim(gapmimder)

# Nombre de las columnas
#-------------------------------------------------
colnames(gapmimder)

# Explorar el inicio de sus datos (1ras 6 Filas)
#-------------------------------------------------
head(gapmimder)

# Explorar el final de sus datos (ultimas 6 Filas)
#-------------------------------------------------
tail(gapmimder)

# Especificar cuantas filas del final quieres ver
#-------------------------------------------------
tail(gapmimder, n=15)

# Explorar FILAS al AZAR usando sample() combinado
# como muestra el siguiente  patron:
# NombreDataFrame[sample(nrow(NombreDataFrame), Cantidad de Filas al Azar), ]
#----------------------------------------------------------------------------
gapmimder[sample(nrow(gapmimder), 5),]

# Explorar las 1ras 166 FILAS con sample()
#----------------------------------------------------
sample(gapmimder)

# REMOVER archivo de la MEMORIA
#----------------------------------------------------
remove(gapmimder)
