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

