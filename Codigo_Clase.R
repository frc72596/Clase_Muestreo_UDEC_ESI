# Clase de muestreo
# link: https://www.datos.gov.co/Salud-y-Protecci-n-Social/MORBILIDAD-POR-CANCER/utgq-6fdm/about_data
# Casos de cancer en Pereira, Risaralda- Descargar para csv para excel
# Paquetes a instalar
install.packages("readr")
install.packages("psych")
install.packages("dplyr")
# Llamar librerias
library(readr)
library(psych)
library(dplyr)
#Población
Po_Cancer <- read_csv("MORBILIDAD_POR_CANCER_20250328.csv")
summary(Po_Cancer)
describe.by(Po_Cancer,Po_Cancer$SEXO)
# Muestra 1
Mu1_Cancer<-sample_n(Po_Cancer,381) # 95% C y 5 E -> 381
describe.by(Mu1_Cancer,Mu1_Cancer$SEXO)
shapiro.test(Mu1_Cancer$EDAD)
hist(Mu1_Cancer$EDAD)
t.test(Mu1_Cancer$EDAD~Mu1_Cancer$SEXO)
# Muestra 2
Mu2_Cancer<-sample_n(Po_Cancer,11809) # 99% C y 1 E -> 11809
describe.by(Mu2_Cancer,Mu2_Cancer$SEXO)
describe(Mu2_Cancer$EDAD)
t.test(Mu2_Cancer$EDAD~Mu2_Cancer$SEXO)
