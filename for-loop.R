# Generar elementos de manera secuencial

vectorDeNumeros <- 1:15
length(vectorDeNumeros)

esPar <- function(numero){
  return(numero %% 2 == 0)
}

respuesta <- esPar(144)
print(respuesta)

respuesta <- esPar(143)
print(respuesta)

# for - loop
# for - loop con secuencia
for(variable in 1:15) {
  print("==========================================")
  print(paste('usando el valor:',variable))
  if(esPar(variable)){
    parOImpar <- "par"
  }else{
    parOImpar <- "impar"
  }
  print(paste("El numero",variable,"es",parOImpar))
}



# for - loop recorriendo vectores
# creacion de vector de frutas y verduras
vectordDefrutasYVerduras <- c('tomate','lechuga','pepino dulce','pera','manzana')

# recorriendo el vector a la bruta
for (posicionDeLaFrutaOVerdura in 1:5) {
  print(paste("la fruta o verdura",vectordDefrutasYVerduras[posicionDeLaFrutaOVerdura],"esta en la posicion",posicionDeLaFrutaOVerdura))
}

# ¿que pasa cuando mi recorrido en el for es menor a la cantidad de elementos en el vector?
for (posicionDeLaFrutaOVerdura in 1:4) {
  print(paste("la fruta o verdura",vectordDefrutasYVerduras[posicionDeLaFrutaOVerdura],"esta en la posicion",posicionDeLaFrutaOVerdura))
}
# R: la manzana queda afuera del recorrido

# ¿que pasa cuando mi recorrido en el for es mayor a la cantidad de elementos en el vector?
for (posicionDeLaFrutaOVerdura in 1:6) {
  print(paste("la fruta o verdura",vectordDefrutasYVerduras[posicionDeLaFrutaOVerdura],"esta en la posicion",posicionDeLaFrutaOVerdura))
}
# R: Muestra NA que corresponde a valores que no existen

# agregando nuevas nuevas frutas o verduras al vector
vectordDefrutasYVerduras <- c(vectordDefrutasYVerduras,"mango")

# ¿Que pasa con el mango cuando se tienen valores de recorrido fijo?
for (posicionDeLaFrutaOVerdura in 1:5) {
  print(paste("la fruta o verdura",vectordDefrutasYVerduras[posicionDeLaFrutaOVerdura],"esta en la posicion",posicionDeLaFrutaOVerdura))
}
# R: el mango queda afuera

# ¿Como se corrige el error de agregar o quitar elementos sin que queden algunos afuera o me muestre NAs?
# R: (usando length) ejemplo:
largoDelVectorDeFrutasYVerduras <- length(vectordDefrutasYVerduras)
for (posicionDeLaFrutaOVerdura in 1:largoDelVectorDeFrutasYVerduras) {
  print(paste("la fruta o verdura",vectordDefrutasYVerduras[posicionDeLaFrutaOVerdura],"esta en la posicion",posicionDeLaFrutaOVerdura))
}

# otra forma de hacer lo mismo en menos lineas
for (posicionDeLaFrutaOVerdura in 1:length(vectordDefrutasYVerduras)) {
  print(paste("la fruta o verdura",vectordDefrutasYVerduras[posicionDeLaFrutaOVerdura],"esta en la posicion",posicionDeLaFrutaOVerdura))
}

# Agregando otra fruta o verdura
vectordDefrutasYVerduras <- c(vectordDefrutasYVerduras,"alcachofa")

for (posicionDeLaFrutaOVerdura in 1:length(vectordDefrutasYVerduras)) {
  print(paste("la fruta o verdura",vectordDefrutasYVerduras[posicionDeLaFrutaOVerdura],"esta en la posicion",posicionDeLaFrutaOVerdura))
}

# Eliminar una fruta o verdura
vectordDefrutasYVerduras <- vectordDefrutasYVerduras[-5]
vectordDefrutasYVerduras <- vectordDefrutasYVerduras[-2]

for (posicionDeLaFrutaOVerdura in 1:length(vectordDefrutasYVerduras)) {
  print(paste("la fruta o verdura",vectordDefrutasYVerduras[posicionDeLaFrutaOVerdura],"esta en la posicion",posicionDeLaFrutaOVerdura))
}

# ¿Que hubiera pasado si elimino primero la posicion 2?
# R: si elimino primero el 2, en el siguiente paso el 5 corresponderia al ex-valor 6.

### Como eliminar una fruta o verdura a eleccion
# R: para esto se genera la siguiente funcion
eliminaFrutaOVerdura <- function(vectorDeFrutasYverduras, nombreDeFrutaYVerdura){
  for (posicionDeLaFrutaOVerdura in 1:length(vectorDeFrutasYverduras)) {
    print(paste("La fruta o verdura seleccionada en la iteracion",posicionDeLaFrutaOVerdura,"es",vectorDeFrutasYverduras[posicionDeLaFrutaOVerdura]))
    if(vectorDeFrutasYverduras[posicionDeLaFrutaOVerdura] == nombreDeFrutaYVerdura){
      print(paste("eliminando la fruta o verdura:",nombreDeFrutaYVerdura))
      vectorDeFrutasYverduras <- vectorDeFrutasYverduras[-posicionDeLaFrutaOVerdura]
    }
  }
  return(vectorDeFrutasYverduras)
}

# usando la funcion
vectordDefrutasYVerduras <- eliminaFrutaOVerdura(vectordDefrutasYVerduras,"mango")

# El problema de la solucion anterior se debe a que el vector se achica
# y for sigue recorriendo elemntos que no existen?

# Solucionando el problema anterior

eliminaFrutaOVerdura <- function(vectorDeFrutasYverduras, nombreDeFrutaYVerdura){
  miPosicion <- 1
  for (posicionDeLaFrutaOVerdura in 1:length(vectorDeFrutasYverduras)) {
    print(paste("La fruta o verdura seleccionada en la iteracion",posicionDeLaFrutaOVerdura,"es",vectorDeFrutasYverduras[miPosicion]))
    if(vectorDeFrutasYverduras[miPosicion] == nombreDeFrutaYVerdura){
      print(paste("eliminando la fruta o verdura:",nombreDeFrutaYVerdura))
      vectorDeFrutasYverduras <- vectorDeFrutasYverduras[-miPosicion]
    }else{
      miPosicion <- miPosicion + 1
    }
  }
  return(vectorDeFrutasYverduras)
}

# usando la funcion corregida
vectordDefrutasYVerduras <- eliminaFrutaOVerdura(vectordDefrutasYVerduras,"mango")
vectordDefrutasYVerduras



### otra forma de recorrer un vector

# re-crear vector de frutas y verduras
vectordDefrutasYVerduras <- c('tomate','lechuga','pepino dulce','pera','manzana')
for(furtaOVerdura in vectordDefrutasYVerduras){
  print(paste("La fruta o verdura extraida es:",furtaOVerdura))
}

# ¿Que desventajas tiene esta forma de recorrer los datos?
# R: No se sabe la posicion del elemento

# re creando eliminacion de un elemento de un vector
eliminaFrutaOVerdura <- function(vectorDeFrutasYverduras, nombreDeFrutaYVerdura){
  miPosicion <- 1
  for (frutaOVerdura in vectorDeFrutasYverduras) {
    print(paste("La fruta o verdura seleccionada en la posicion",miPosicion,"es",frutaOVerdura))
    if(frutaOVerdura == nombreDeFrutaYVerdura){
      print(paste("eliminando la fruta o verdura:",nombreDeFrutaYVerdura))
      vectorDeFrutasYverduras <- vectorDeFrutasYverduras[-miPosicion]
    }else{
      miPosicion <- miPosicion + 1
    }
  }
  return(vectorDeFrutasYverduras)
}

vectordDefrutasYVerduras <- eliminaFrutaOVerdura(vectordDefrutasYVerduras,"tomate")
print(vectordDefrutasYVerduras)
