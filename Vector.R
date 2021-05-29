
# Vector vacia
miPrimerVector <- c()

# Vector con elementos
miPrimerVector <- c("Amira","Andrés","Camila","Francisca")

# Ver los Elemetos
print(miPrimerVector)

# Agregar Elementos
# !!! ATENCION ¡¡¡ esto no guarda 
c(miPrimerVector, "Hector")
print(miPrimerVector)

# para que guarde debemos sobre escribir la variable
miPrimerVector <- c(miPrimerVector, "Hector")
print(miPrimerVector)

# Agregado en la posición
miPrimerVector[5] <- "Camila"
print(miPrimerVector)


miPrimerVector[5] <- "Camila"
print(miPrimerVector)

miPrimerVector[6] <- "Michelle"
print(miPrimerVector)

# Ver un Elemeto
# viendo el elemnto que esta en la posicion 3
print(miPrimerVector[3])

# viendo el elemento que esta en la posicion 15
print(miPrimerVector[15])

# viendo el elemento que esta en la posicion 0
print(miPrimerVector[0])

# Quitar Elementos
# quitando el elemento que esta en la posicion -3
# !!! ATENCION ¡¡¡ Aqui solo se elimina de manera temporal
print(miPrimerVector[-3])
print(miPrimerVector)

# Eliminado definitivo
miPrimerVector <- miPrimerVector[-3]
print(miPrimerVector)

# Cual es problema del Vector
# Solo puede contener un tipo de datos

# Creando vector solo con Booleanos
miVector <- c(T,F,TRUE,F,T,F,F,T,T,T)
print(miVector)

# Que pasa cuando a un vector que tiene valores Booleanos se le agrega un
# valor Entero?
# todos los datos se transforman en valor numerico
miVector <- c(miVector,34)
print(miVector)

# Que pasa cuando a un vector que tiene valores Booleanos se le agrega un
# valor Decimal?
# Todos los datos se transforman en valores decimales
miVector <- c(miVector,34.5430875)
print(miVector)


# Que pasa cuando a un vector que tiene valores Booleanos se le agrega un
# valor de texto?
# Todos los datos se transforman en texto
miVector <- c(miVector,"gorrion")
print(miVector)

# Como saber el tamaño de un vector
print(miVector)
length(miVector)

miVector[13]

# Obteniendo y almacenando el valor del largo de mi vector
largoDelVector <- length(miVector)
print(largoDelVector)
miVector[largoDelVector]

# Haciendo todo en una linea
miVector[length(miVector)]


########################
# Recorrer los elementos
