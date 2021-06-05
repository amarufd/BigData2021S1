
### Contando caras de una moneda
resultadosDeLaMoneda <- sample(0:1, 20, replace = T)
resultadosDeLaMoneda

contandoResultados <- function(vectorResultadosMoneda){
  conteoCaras <- 0
  conteoSellos <- 0
  for (resultadoMoneda in vectorResultadosMoneda) {
    if(resultadoMoneda == 0){
      conteoSellos <- conteoSellos + 1
    }else{
      conteoCaras <- conteoCaras + 1
    }
  }
  
  if(conteoSellos == conteoCaras){
    print(paste("Empataron sellos y caras con",conteoCaras,"resultados cada uno"))
  }else if(conteoSellos < conteoCaras){
    print(paste("Gano cara con",conteoCaras,"vs",conteoSellos,"sellos"))
  }else{
    print(paste("Gano sellos con",conteoSellos,"vs",conteoCaras,"caras"))
  }
}


# Usand la funcion
contandoResultados(resultadosDeLaMoneda)




