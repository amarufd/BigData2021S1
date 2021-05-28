######## Creacion de funciones

deteccionRangoEtario <- function(anioDeNacimiento){
  if(anioDeNacimiento >= 1946 && anioDeNacimiento <= 1964){
    print("es Baby Boom")
  }else if(anioDeNacimiento >= 1928 && anioDeNacimiento <= 1945){
    print("es Generacion silenciosa")
  }else{
    print("no esta determinado")
  }
}

deteccionRangoEtario(1960)
deteccionRangoEtario(1980)
deteccionRangoEtario(1970)
deteccionRangoEtario(1950)
deteccionRangoEtario(1930)

resultadoEvaluacionRangoEtario <- deteccionRangoEtario(1930)
print(resultadoEvaluacionRangoEtario)

if(resultadoEvaluacionRangoEtario == "es Generacion silenciosa"){
  print("Se les puede prestar maximo 3m")
}


