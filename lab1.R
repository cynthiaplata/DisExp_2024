# Gastos totales
300 + 240 + 1527 + 400 + 1500 + 1833

celular <- 300
celular 

transporte <- 240
transporte 

comestibles <- 1527
comestibles

gimnasio <- 400 
gimnasio 

alquiler <- 1500
alquiler 

otros <- 1833
otros

total <- (celular + transporte + comestibles + gimnasio + alquiler + otros)

semestre_escolar <- total * 5

año_escolar <- semestre_escolar * 2

gastos <- c(celular, transporte, comestibles, gimnasio, alquiler, otros)

barplot(gastos)

gastos_ordenados <- sort(gastos, decreasing = TRUE)

barplot(gastos_ordenados)







