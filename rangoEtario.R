# Silent Generation ( 1928 - 1945 )
# Baby boom ( 1946 - 1964 ) 
# Generacion x ( 1965 - 1980 )
# Generacion Y (Millenials) ( 1981 - 1996 )
# Generacion Z ( 1997 - 2015 )


anioNacimiento <- 1998
print(anioNacimiento)

# v1.- si el año de nacimiento es baby boom
# v2.- si la persona nacio entre x años

# condiciones que determinan que una persona no es baby boom
# condicion: persona nacio antes del 1946
anioNacimiento < 1946

# condicion: persona nacio despues de 1964
anioNacimiento > 1964

# v3.- si la persona nacio antes del 1946 y despues de 1964, no es baby boom
anioNacimiento < 1946 || anioNacimiento > 1964


### condicional if
if(anioNacimiento < 1946 || anioNacimiento > 1964){
  print("La persona no es Baby Boom")
}



# probando con otro anio
anioNacimiento <- 1950
if(anioNacimiento < 1946 || anioNacimiento > 1964){
  print("La persona no es Baby Boom")
}


### condicional if - else

anioNacimiento <- 1950
if(anioNacimiento < 1946 || anioNacimiento > 1964){
  print("La persona no es Baby Boom")
}else{
  print("esta persona si es Baby Boom")
}



######## correccion propia a la pregunta
# mi condicion cuando una persona es Baby Boom
# si cuando su anio de nacimiento es mayor a 1946 y menor a 1964
anioNacimiento <- 1950
anioNacimiento >= 1946 && anioNacimiento <= 1964

# con condicional if - else
if(anioNacimiento >= 1946 && anioNacimiento <= 1964){
  print("es Baby Boom")
}else{
  print("no es Baby Boom")
}


# preguntando si una persona es Baby Boom, Generacion silenciosa o una desconocida
# pregunta que determina si una persona es de la generacion silenciosa ( 1928 - 1945 )
# si la persona nacio despues de 1927 y antes de 1946
anioNacimiento >= 1928 && anioNacimiento <= 1945

# con condicional if - else if - else
## probando con anio nacimiento 1950
anioNacimiento <- 1950
if(anioNacimiento >= 1946 && anioNacimiento <= 1964){
  print("es Baby Boom")
}else if(anioNacimiento >= 1928 && anioNacimiento <= 1945){
  print("es Generacion silenciosa")
}else{
  print("no esta determinado")
}


## probando con anio nacimiento 1930
anioNacimiento <- 1930
if(anioNacimiento >= 1946 && anioNacimiento <= 1964){
  print("es Baby Boom")
}else if(anioNacimiento >= 1928 && anioNacimiento <= 1945){
  print("es Generacion silenciosa")
}else{
  print("no esta determinado")
}


## probando con anio nacimiento 1970
anioNacimiento <- 1970
if(anioNacimiento >= 1946 && anioNacimiento <= 1964){
  print("es Baby Boom")
}else if(anioNacimiento >= 1928 && anioNacimiento <= 1945){
  print("es Generacion silenciosa")
}else{
  print("no esta determinado")
}



