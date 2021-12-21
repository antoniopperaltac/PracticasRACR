#Demos
demo()
demo(graphics)

#Usando R como una calculadora
5+2*3
(5+2)*3

2/10000
5e3

#Funciones matematicas
sin(1)
log(1)
log10(10)
exp(0.5)
cos(1)
asin(1)
acos(1)
tan(1)
atan(1)

#Comparando
1 == 1
1!= 2
1<2
1<=1
1>0
1>= -9

#Variables y asignaciones
x<-1/40
x
log(x)
x<-100
x<-x+1
y<-x*2
x=1/40

# Vectorizacion
1:5
2^(1:5)
x<-1:5
2^x

#Administrando tu entorno
ls()
ls(all.names = TRUE)
ls
rm(x)
rm(list=ls())

#Paquetes en R
installed.packages()
#install.packages("nombre_de_paquete")
update.packages()
#remove.packages("nombre_de_paquete")
library(ggplot2)
library(gapminder)

#Desafio 1
#Nombres Correctos de Variables en R
min_height
max.height
MaxLenght
celsius2kelvin
#Varible oculta
.mass
#Nombres INCorrectos de Variables en R
_age
min-lenght
2widths

#Desafio 2
mass<-47.5
age<-122
mass<-mass*2.3
age<-age-20

#Desafio 3
mass>age

#Desafio 4
rm(mass)
rm(age)
rm(mass,age)

#Desafio 5
install.packages("ggplot2","plyr","gapminder")
install.packages("ggplot2")
