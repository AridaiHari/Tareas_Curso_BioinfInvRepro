###ESte script permite explorar la base de datos Mazi y Teozintle
#Cargar el archivo a R 
MaizTeo<-read.delim("../data/maizteocintle_SNP50k_meta_extended.txt")
#tipo de objeto creado al cargar la base 
class(MaizTeo)
#Como ver la primeras 6 lineas del archivo 
head(MaizTeo)
#Cuantas muestras hay 
nrow(MaizTeo)
#De cuantos estados hay muestras 
nlevels(MaizTeo$Estado)
#Muestras colectadas antes de 1980 
num<-MaizTeo$A.o._de_colecta<1980
table(num)["TRUE"]
#Número de muestras por raza 
raz<-MaizTeo$Raza
table(raz)
#Altitud promedio 
mean(MaizTeo$Altitud)
#Altitud maxima y minima de colecta 
min(MaizTeo$Altitud)
max(MaizTeo$Altitud)
#Crear un data frame con la raza ocotillo
MaizTeo$Raza=="Olotillo"
dafa<-data.frame(MaizTeo[c(69,72,75,79,123,159),1:22])
#Crear un dataframe con las razas REventado, Jela, Ancho
rejean<-data.frame(MaizTeo[c(16,30,37,57,43,103,119,135,154),1:22])
#Salvar archivo como csv
write.csv(rejean, file="../meta/submat.csv")
