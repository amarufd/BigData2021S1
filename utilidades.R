


##### [print] como mostrar mensajes por consola

print("esto es un mensaje")

variableConMensaje <- "hoy es un lindo dia"
print(variableConMensaje)


##### [paste] concatenando texto

a <- "juan"
b <- "pedro"

paste("la persona se llama",a)

paste("la persona se llama",b)

paste("las personas se llaman",b,"y",a)

# cambiando el elemento separador
paste("las personas se llaman",b,"y",a, sep = "%")
paste("las personas se llaman",b,"y",a, sep = ",")


##### [sample] crear elemtos de manera aleatoria

# creando 5 ejemplos entre 1 y 10
resultadoDelSample <- sample(1:10, 5)
resultadoDelSample

# creando 20 entre 1 y 10
resultadoDelSample <- sample(1:10, 20 , replace = T)
resultadoDelSample


# creando vector de frutas y verduras
vectordDefrutasYVerduras <- c('tomate','lechuga','pepino dulce','pera','manzana')
resultadoDelSampleConFrutasYverduras <- sample(vectordDefrutasYVerduras, 6, replace = T)
resultadoDelSampleConFrutasYverduras


# probando substring
textocnuf <- "UF 19,80)*"
print(textocnuf)
print(substr(textocnuf, 1, 2))
print(substr(textocnuf, 1, 2)=="UF")


# buscar ayuda en R
help(strsplit)


