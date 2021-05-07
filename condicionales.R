

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



