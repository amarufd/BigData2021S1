

library('rvest')


# abriendo pagina 1 de yapo.cl en la region metropolitana
yapoCl <- read_html("https://www.yapo.cl/region_metropolitana?ca=15_s&o=1")

# revisando el contenido de yapoCl
print(html_text(yapoCl))


# ¿Como simularia el cambio de pagina?
# simular navegacion en 4 paginas
for (nroPagina in 1:4) {
  print("=====================================================================================================================")
  print(paste("Navegando por el nro de pagina:",nroPagina))
  urlYapoCl <- paste("https://www.yapo.cl/region_metropolitana?o=",nroPagina,"&ca=15_s",sep = "")
  print(urlYapoCl)
  yapoCl <- read_html(urlYapoCl)
  print(html_text(yapoCl))
}


# ¿Como llegamos a los productos?
# los productos estan en una tabla
yapoCl <- read_html("https://www.yapo.cl/region_metropolitana?ca=15_s&o=1")
tablaProductosYapoCl <- html_nodes(yapoCl,css = "#hl")

# obteniendo los precios de la tabla
preciosYapoCl <- html_nodes(tablaProductosYapoCl, css = ".price")
print(length(preciosYapoCl))
print(html_text(preciosYapoCl[1]))

# mostrando todos los precios obtenidos
for (posicionElemento in 1:length(preciosYapoCl)) {
  print(html_text(preciosYapoCl[posicionElemento]))
}


# obteniendo los nobres de los productos
nombresProductosYapoCl <- html_nodes(tablaProductosYapoCl, css=".title")
print(length(nombresProductosYapoCl))

# mostrando todos los nombres obtenidos y
# extrayendo los links
for (nombreElemento in nombresProductosYapoCl) {
  print(html_text(nombreElemento))
  print(html_attr(nombreElemento,"href"))
}


obtenerPrecioProducto <- function(pagina){
  precioProducto <- html_nodes(paginaProducto,css=".price-final")
  if(length(precioProducto)>0){
    precio <- html_text(precioProducto)
  }else{
    precio <- NA
  }
  return(precio)
}


# entrando a los diferentes productos
for (nombreElemento in nombresProductosYapoCl) {
  print("=========================================================================================")
  print(html_text(nombreElemento))
  # se extrae el link del producto
  urlProducto <- html_attr(nombreElemento,"href")
  print(urlProducto)
  # lee pagina del producto
  paginaProducto <- read_html(urlProducto)
  # precio del producto contenido en la pagina del producto
  precioProducto <- obtenerPrecioProducto(paginaProducto)
  print(is.na(precioProducto))
  print(!is.na(precioProducto))
  if(!is.na(precioProducto)){
    print(precioProducto)
  }else{
    print("no hay precio")
  }
}



# Limpiando informacion
for (nombreElemento in nombresProductosYapoCl) {
  print("=========================================================================================")
  print(html_text(nombreElemento))
  # se extrae el link del producto
  urlProducto <- html_attr(nombreElemento,"href")
  print(urlProducto)
  # lee pagina del producto
  paginaProducto <- read_html(urlProducto)
  # precio del producto contenido en la pagina del producto
  precioProducto <- obtenerPrecioProducto(paginaProducto)
  if(!is.na(precioProducto)){
    print(precioProducto)
    precioProducto <- gsub("\n","",precioProducto)
    precioProducto <- gsub("\t","",precioProducto)
    precioProducto <- gsub("[$]","",precioProducto)
    precioProducto <- gsub("[.]","",precioProducto)
    precioProducto <- as.numeric(precioProducto)
    print(precioProducto)
  }else{
    print("no hay precio")
  }
}


# dividir el texto en partes a travez de la eleccion de un
# elemnto

variableTexto <- "hola.mundo"
print(variableTexto)
variableTexto <- strsplit(variableTexto,"[.]")
variableTexto <- variableTexto[[1]]
print(variableTexto)
View(variableTexto)
print(length(variableTexto))

# Limpiando informacion
for (nombreElemento in nombresProductosYapoCl) {
  print("=========================================================================")
  print(html_text(nombreElemento))
  # se extrae el link del producto
  urlProducto <- html_attr(nombreElemento,"href")
  # lee pagina del producto
  paginaProducto <- read_html(urlProducto)
  # precio del producto contenido en la pagina del producto
  precioProducto <- obtenerPrecioProducto(paginaProducto)
  if(!is.na(precioProducto)){
    precioProducto <- gsub("\n","",precioProducto)
    precioProducto <- gsub("\t","",precioProducto)
    precioProducto <- gsub("[$]","",precioProducto)
    precioProducto <- gsub("[.]","",precioProducto)
    
    # diviendo por un parentesis
    precioProducto <- strsplit(precioProducto,"[(]")
    precioProducto <- precioProducto[[1]]
    if(length(precioProducto)>1){
      print("tiene valor en uf")
      print(precioProducto)
    }else{
      precioProducto <- as.numeric(precioProducto)
      print(precioProducto)
    }
  }else{
    print("no hay precio")
  }
}



# detectando UF
limpiezaDatos <- function(frase){
  frase <- gsub("\n","",frase)
  frase <- gsub("\t","",frase)
  frase <- gsub("[$]","",frase)
  frase <- gsub("[.]","",frase)
  return(frase)
}

for (nombreElemento in nombresProductosYapoCl) {
  print("=========================================================================")
  print(html_text(nombreElemento))
  # se extrae el link del producto
  urlProducto <- html_attr(nombreElemento,"href")
  # lee pagina del producto
  paginaProducto <- read_html(urlProducto)
  # precio del producto contenido en la pagina del producto
  precioProducto <- obtenerPrecioProducto(paginaProducto)
  if(!is.na(precioProducto)){
    precioProducto <- limpiezaDatos(precioProducto)
    
    # diviendo por un parentesis para detectar que tiene valor en UF
    splitPrecio <- strsplit(precioProducto,"[(]")
    splitPrecio <- splitPrecio[[1]]
    if(length(splitPrecio)>1){
      print("tiene valor en uf")
      print(precioProducto)
      for (elementoDelSplit in splitPrecio) {
        elementoDelSplit <- gsub("[)]","",elementoDelSplit)
        elementoDelSplit <- gsub("[*]","",elementoDelSplit)
        if(is.na(as.numeric(elementoDelSplit))){
          valorUF <- elementoDelSplit
          print("valor en UF")
          print(valorUF)
        }else{
          precioEnPensos <- as.numeric(elementoDelSplit)
          print("valor en pesos")
          print(precioEnPensos)
        }
      }
    }else{
      precioProducto <- as.numeric(precioProducto)
      print(precioProducto)
    }
  }else{
    print("no hay precio")
  }
}


# creando un dataframe
misdatos <- data.frame()
for (nombreElemento in nombresProductosYapoCl) {
  precioEnPensos <- NA
  precioEnUF <- NA
  nombreProducto <- NA
  
  print("=========================================================================")
  print(html_text(nombreElemento))
  nombreProducto <- html_text(nombreElemento)
  # se extrae el link del producto
  urlProducto <- html_attr(nombreElemento,"href")
  # lee pagina del producto
  paginaProducto <- read_html(urlProducto)
  # precio del producto contenido en la pagina del producto
  precioProducto <- obtenerPrecioProducto(paginaProducto)
  if(!is.na(precioProducto)){
    precioProducto <- limpiezaDatos(precioProducto)
    
    # diviendo por un parentesis para detectar que tiene valor en UF
    splitPrecio <- strsplit(precioProducto,"[(]")
    splitPrecio <- splitPrecio[[1]]
    if(length(splitPrecio)>1){
      print("tiene valor en uf")
      print(precioProducto)
      for (elementoDelSplit in splitPrecio) {
        elementoDelSplit <- gsub("[)]","",elementoDelSplit)
        elementoDelSplit <- gsub("[*]","",elementoDelSplit)
        if(is.na(as.numeric(elementoDelSplit))){
          valorUF <- elementoDelSplit
          print("valor en UF")
          print(valorUF)
          precioEnUF <- valorUF
        }else{
          precioEnPensosTmp <- as.numeric(elementoDelSplit)
          print("valor en pesos")
          print(precioEnPensosTmp)
          precioEnPensos <- precioEnPensosTmp
        }
      }
    }else{
      precioProducto <- as.numeric(precioProducto)
      print(precioProducto)
      precioEnPensos <- precioProducto
    }
  }else{
    print("no hay precio")
  }
  
  dataTmp <- data.frame(nombreproducto = nombreProducto, precioEnPensos = precioEnPensos, precioEnUF = precioEnUF)
  misdatos <- rbind(dataTmp,misdatos)
}

write.csv(misdatos,"micsv.csv")
write.csv2(misdatos,"micsv2.csv")

read.csv(misdatos,"micsv.csv")
read.csv2(misdatos,"micsv2.csv")
