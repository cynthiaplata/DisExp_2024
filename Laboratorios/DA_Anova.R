#Cynthia Amely Plata Suarez 
#2071394
#08/05/2024


# Ingresar datos ----------------------------------------------------------

#Ingresar datos del diseño aleatorio
# 5 tratamientos germinativos
# 4 repeticiones cada tratamiento


germ <- c(3, 3, 4, 2, 7, 8, 7, 6, 8, 9, 8, 7, 6, 7, 7, 6, 3, 2, 1, 3)
trat <- gl(5, 4, 20, labels = c("Ctrl", "EM", "Ra4h", "AG", "AC"))

Experimento <- data.frame(trat, germ)

boxplot(Experimento$germ ~ Experimento$trat, col = "blue", xlab = "Tratamiento", ylab = "Germinacion (%)")

# Revisar normalidad
shapiro.test(Experimento$germ)

#Revisa la igualdad de la varianza
bartlett.test(Experimento$germ, Experimento$trat)

med.trat <- tapply(Experimento$germ, Experimento$trat, mean)
med.trat

#Media general
MG <- mean(Experimento$germ)


var.trat <- tapply(Experimento$germ, Experimento$trat, var)
var.trat

Experimento$SC <- (Experimento$germ - MG)^2

#Suma de cuadrados del experimento SCTotal
SCtot <- sum(Experimento$SC)
SCtot

#Suma del cuadrado del tratamiento SCTrat
SCtrat <- sum((med.trat-MG)^2 * 4)
SCtrat

#Suma de cuadrado error
SCtot - SCtrat

SCtrat/4
9.7/15
26.2/0.64


#ANOVA usando funcion aov
Exp.aov <- aov(Experimento$germ ~ Experimento$trat)
summary(Exp.aov)

#Existen diferencias entre los trat de germ
#Por lo tanto, aplicaremos prueba de Tukey 

TukeyHSD(Exp.aov)
plot(TukeyHSD(Exp.aov))