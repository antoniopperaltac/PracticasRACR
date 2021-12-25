# Agregando columnas y filas a un data frame

gatos <- read.csv(file="data/feline-data.csv")

gatos
# COLUMNAS
# LAS COLUMNAS en un DATA FRAME son VECTORES o FACTORES.
# Si queremos agregar una nueva columna, 
# podemos empezar por crear un nuevo vector.

edad <- c(2,3,5)

# Agregar este vector como una columna usando cbind.
cbind(gatos, edad)

# Advertencia: El vector que agregas debe tener:
# Igual número de filas que el data.frame a donde lo agregas

# Ejemplo 1 cuando el numero de filas es mayor
edades <- c(2,3,5,12)
cbind(gatos, edades)
# Mostrara el siguiente mensaje de Error:
# Error in data.frame(..., check.names = FALSE) : 
# arguments imply differing number of rows: 3, 4

# Ejemplo 2 cuando el numero de filas es menor
edad_menor <- c(2,3)
cbind(gatos, edad_menor)
# Mostrara el siguiente mensaje de Error:
# Error in data.frame(..., check.names = FALSE) : 
# arguments imply differing number of rows: 3, 2

# Para que funcione:
# NumFilas(data.frame) debe ser igual Largo(vectorParaAgregar)
# nrow(gatos) = length(edad)
nrow(gatos)
length(edad)

edad <- c(2,3,5,9,9,9)
cbind(gatos, edad)

# FILAS
# LAS FILAS en un DATA FRAME son LISTAS.
nueva_fila <- list("tortoiseshell",3.3,TRUE,9)
gatos<-rbind(gatos, nueva_fila)
gatos
otra_fila <- list("gris",3.2,9,18)
gatos <- rbind(gatos, otra_fila)
gatos
gatos["6","le_gusta_cuerda"]<-0
gatos
gatos$le_gusta_cuerda[6]=0

# Factors
colores <- factor(c("negro","canela","canela","negro"))
levels(colores)

# Ver la cantidad de niveles del factor colores
nlevels(colores)

# Mostrar el contenido y niveles del factor colores 
colores

# Cambiar el orden de los niveles
colores <- factor(colores, levels = c("negro","canela"))
colores

levels(gatos$color)
levels(gatos$color) <- c(levels(gatos$color), 'tortoiseshell')
gatos <- rbind(gatos, list("tortoiseshell", 3.3, TRUE, 9))
# R mostrara el siguiente mensaje WARNING:
# Warning message:
# In `[<-.factor`(`*tmp*`, ri, value = c("mixto", "negro", "atigrado",  :
#                                         invalid factor level, NA generated
# Verificar Estructura de datos del Data Frame
str(gatos)
# Cambiar el tipo de datos de la columna color
gatos$color <- as.character(gatos$color)
str(gatos)

# DESAFIO 1
# --------------------------------------------------------
cbind(gatos, edad)
human.edad <- gatos$edad * 7
human.edad <- as.factor(human.edad)
human.edad <- as.numeric(human.edad)
human.edad <- human.edad / 7

gatos
# Eliminar FILAS
# Sintaxis: DataFrame[-#FILA a eliminar,]
gatos[-5,]

# ELIMINAR filas que contengan valores NA
na.omit(gatos)

# Eliminar COLUMNAS
# Sintaxis: DataFrame[,-#COLUMNA a eliminar]
gatos[,-4]
# Otra Alternativa para Eliminar Columnas de Data Frame
drop <- names(gatos) %in% c(le_gusta_cuera)
gatos

# ASIGNAR el nuevo resultado output al data frame gatos, 
# así estos cambios seran permanentes
gatos <- na.omit(gatos)
edad <- c(2,3,5,9)
gatos <- cbind(gatos, edad)
gatos

# Podemos pegar dos data frames usando rbind 
# que significa unir las filas (verticalmente): 
gatos <- rbind(gatos, gatos)
gatos

# ReGenerar los nombres de las filas en orden secuencial (1,2,3,etc.)
rownames(gatos) <- NULL
gatos

# DESAFIO 2
# --------------------------------------------------------
df <-  data.frame(id=c('a','b','c'),
                  x=1:3,
                  y=c(TRUE,TRUE,FALSE),
                  stringsAsFactors = FALSE)

df

dersonal <- data.frame(id=1:4,
                       Nombre=c('James','Peter','Mary','Teresa'),
                       Apellido=c('Peralta','O Brien','Smith','Rodriguez'),
                       NumeroFavorito=7:10,
                       stringsAsFactors = FALSE)
dersonal
# Cambiar Nombre al Data Frame
# Sintaxis: NuevoNombre <- ViejoNombre
# Ejemplo: dPersonal <- dersonal
dPersonal <- dersonal
dPersonal
# Remover objeto Data Frame
remove(dersonal)

# Agregar Fila a Data Frame
# Como las filas son listas
# 1ro. Crea una lista
npersona <- list(1, "Antonio","Peralta",27)
# 2do. Agrega la lista al Data Frame con rbind
dPersonal <- rbind(dPersonal, npersona)
dPersonal
# Cambiar / Reemplazar valor de una columna de un Data Frame
# Solucion1 Sintaxis: NombreDataFrame[NumFila,NumColumna] = ValorNuevo
# Ejemplo Solucion1: dPersonal[5,1]=5
dPersonal[5,1]=5
dPersonal
# Solucion2 Sintaxis: NombreDataFrame$NombreColumna[NumeroFila] = ValorNuevo
# Ejemplo Solucion2: dPersona$id[5]=1
dPersonal$id[5]=1
dPersonal
dPersonal$id[5]=5
dPersonal
# Solucion3 Abrir Editor de Datos: Sintaxis fix(NombreDataFrame)
# Ejemplo Solucion3: fix(dPersonal)
fix(dPersonal)
dPersonal

# Agregar Columna al Data Frame Columna : “¿Es hora de una pausa?”
# La Solucion1 es adecuada cuando el contenido de la nueva columna son pocos e iguales o diferentes.
# Solucion1 Sintaxis: NombreDataFrame <- cbind(NombreDataFrame, NombreColumnaNueva c(Valores,Valores))
# Sin utilizar rep para repetir contenido o valores
dPersonal = cbind(dPersonal, EsHoraDeUnaPausa = c(TRUE, TRUE, TRUE, TRUE, TRUE))
dPersonal
# Si los valores tendran el mismo contenido y son mas de dos o tres, utilice rep para repetir
# Solucion2 Sintaxis: NombreDataFrame <- cbind(NombreDataFrame, NombreColumnaNueva=rep("Contenido",CantFilas)) 
# Las repeticiones deben ser igual a la cant de filas > dPersonal = cbind(dPersonal, EsHoraDeUnaPausa=rep(TRUE, 9))
# El Siguiente Error fue por colocar 9 en lugar de 5: Error in data.frame(..., check.names = FALSE) : 
#  arguments imply differing number of rows: 5, 9
dPersonal = cbind(dPersonal, EsHoraDeUnaPausa=rep(TRUE, 5))
dPersonal
# Eliminar Columna y Asignar el resultado al Data Frame
# NombreDataFrame <- NombreDataFrame[,-NumeroDeColumna]
dPersonal <- dPersonal[,-5]
dPersonal
