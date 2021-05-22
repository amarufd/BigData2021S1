

########################################################################################################
########################################### CONDICIONAL IF #############################################
########################################################################################################

# ejemplo con un numero par

a <- 4
if( a %% 2 == 0){
  print("este numero es par")
}

# ejemplo con un numero impar

a <- 5
if( a %% 2 == 0){
  print("este numero es par")
}


########################################################################################################
####################################### CONDICIONAL IF - ELSE ##########################################
########################################################################################################


# Ejemplo con un numero par
a <- 12

if( a %% 2 == 0 ){
  print("el numero es par")
}else{
  print("el numero es impar")
}


# Ejemplo con un numero impar

a <- 23

if( a %% 2 == 0 ){
  print("el numero es par")
}else{
  print("el numero es impar")
}


## ejemplo con texto
# buscando a pedro

nombrePersona <- "juan"

if(nombrePersona == "pedro"){
  print("Felicitaciones!!! la persona fue encontrada")
}else{
  print("esta persona no es pedro, siga buscando")
}

# buscando con juan
nombrePersona <- "pedro"

if(nombrePersona == "pedro"){
  print("Felicitaciones!!! la persona fue encontrada")
}else{
  print("esta persona no es pedro, siga buscando")
}


# buscando a juan y pedro
# buscando con pedro

nombrePersona <- "pedro"

if(nombrePersona == "pedro" || nombrePersona == "juan"){
  print(paste("Felicitaciones!!! la persona que encontraste fue",nombrePersona))
}else{
  print("esta persona no es pedro o juan, siga buscando")
}


# buscando con juan

nombrePersona <- "juan"

if(nombrePersona == "pedro" || nombrePersona == "juan"){
  print(paste("Felicitaciones!!! la persona que encontraste fue",nombrePersona))
}else{
  print("esta persona no es pedro o juan, siga buscando")
}


# buscando con amaru

nombrePersona <- "amaru"

if(nombrePersona == "pedro" || nombrePersona == "juan"){
  print(paste("Felicitaciones!!! la persona que encontraste fue",nombrePersona))
}else{
  print("esta persona no es pedro o juan, siga buscando")
}



########################################################################################################
################################# CONDICIONAL IF - ELSE IF - ELSE ######################################
########################################################################################################


# buscando con manuel

nombrePersona <- 'manuel'

if(nombrePersona == 'pedro'){
  print("Felicitaciones!! econtraste a pedro")
}else if(nombrePersona == 'antonio' ){
  print("Felicitaciones!! econtraste a antonio")
}else{
  print("Esta persona no existe")
}


# buscando con pedro

nombrePersona <- 'pedro'

if(nombrePersona == 'pedro'){
  print("Felicitaciones!! econtraste a pedro")
}else if(nombrePersona == 'antonio' ){
  print("Felicitaciones!! econtraste a antonio")
}else{
  print("Esta persona no existe")
}


###### EJER:
## Determinar si un numero es par, impar u otra cosa (tarea)
## Determinar quien gana cuando se juega piedra papel y tijera

################ 1er ensayo

jugador1 <- 'papel'
jugador2 <- 'tijera'


if(jugador1 == jugador2){
  print("Empate")
}else if((jugador1 == 'piedra' || jugador2 == 'piedra') && (jugador1 == 'tijera' || jugador2 == 'tijera')){
  if(jugador2 == 'piedra'){
    print("Gana jugador 2")
  }else{
    print('Gana jugador 1')
  }
}else if((jugador1 == 'papel' || jugador2 == 'papel') && (jugador1 == 'tijera' || jugador2 == 'tijera')){
  if(jugador2 == 'tijera'){
    print("Gana jugador 2")
  }else{
    print('Gana jugador 1')
  }
}else{
  if(jugador2 == 'papel'){
    print("Gana jugador 2")
  }else{
    print('Gana jugador 1')
  }
}


################ 2do ensayo

jugador1 <- 'papel'
jugador2 <- 'papel'


if(jugador1 == jugador2){
  print("Empate")
}else if((jugador1 == 'piedra' || jugador2 == 'piedra') && (jugador1 == 'tijera' || jugador2 == 'tijera')){
  if(jugador2 == 'piedra'){
    print("Gana jugador 2")
  }else{
    print('Gana jugador 1')
  }
}else if((jugador1 == 'papel' || jugador2 == 'papel') && (jugador1 == 'tijera' || jugador2 == 'tijera')){
  if(jugador2 == 'tijera'){
    print("Gana jugador 2")
  }else{
    print('Gana jugador 1')
  }
}else{
  if(jugador2 == 'papel'){
    print("Gana jugador 2")
  }else{
    print('Gana jugador 1')
  }
}

################ 3 ensayo
jugador1 <- 'papel'
jugador2 <- 'piedra'


if(jugador1 == jugador2){
  print("Empate")
}else if((jugador1 == 'piedra' || jugador2 == 'piedra') && (jugador1 == 'tijera' || jugador2 == 'tijera')){
  if(jugador2 == 'piedra'){
    print("Gana jugador 2")
  }else{
    print('Gana jugador 1')
  }
}else if((jugador1 == 'papel' || jugador2 == 'papel') && (jugador1 == 'tijera' || jugador2 == 'tijera')){
  if(jugador2 == 'tijera'){
    print("Gana jugador 2")
  }else{
    print('Gana jugador 1')
  }
}else{
  if(jugador2 == 'papel'){
    print("Gana jugador 2")
  }else{
    print('Gana jugador 1')
  }
}




