# SCRIPT para DESCARGAR Archivo desde la WEB a Folder Local y
# para LEER archivo csv desde el FOLDER LOCAL

# Decargar archivo directamente y dirigirlo a folder data
download.file("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder-FiveYearData.csv", 
              destfile = "data/gapminder-FiveYearData.csv")


# Cargar archivo a memoria
# Utilizar Funcion de Leer Archivo tipo CSV (Comma Separated Values)
gapmimder <- read.csv(file="data/gapminder-FiveYearData.csv")