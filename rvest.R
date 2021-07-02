## !!! siempre configurar el espacio de trabajo

# instalando el paquete rvest
# install.packages("rvest")
# install.packages("curl")
# install.packages("xml2")

# implementando rvest
library("rvest") # abrinendo el paquete rvest


#################### Abrindo pagina web index.html
####################  con la funcion read_html
index <- read_html("index.html")
print(index)

# Viendo todo el texto que esta contenido en
# la variable index
print(html_text(index))



#################### navegando dentro del sitio usando CSS o xpath
#################### con la funcion html_nodes

# seleccionando un elemento en particular
articulo <- html_nodes(index, css=".articulo")

# revisando la variable articulo
print(html_text(articulo))

# sacando el titulo del articulo
tituloArticulo <- html_nodes(articulo,css="h2")

# viendo el contenido de el titulo
print(html_text(tituloArticulo))


# obteniendo informacion con xpath
contenidoArticulo <- html_node(index,xpath="/html/body/div/div[2]/div[1]")

# viendo el contenido del articulo
print(html_text(contenidoArticulo))



#################### obteniendo los link
#################### cuncion html_attr

# seleccionando un elemento en particular
articulo <- html_nodes(index, css=".articulo")

# revisando la variable articulo
print(html_text(articulo))

# seleccionando un elemento con link
contenedorLinks <- html_nodes(articulo,css="a")

# viendo el contenido de contenedortLinks
print(contenedorLinks)

# extrayendo los links
# con la funcion html_attr
links <- html_attr(contenedorLinks,"href")
print(links)

# recorriendo los link con for
for(link in links){
  print("=================================================================================")
  print(paste("abriendo el siguiente link:",link))
  print(html_text(read_html(link)))
}


#################### obteniendo los datos de una tabla
#################### funcion html_table

tabla <- html_table(index)[[1]]

# viendo el primer elemento de una columna 
# de la tabla
print(tabla$`Nombre de la flor`[1])

print(html_attr(tabla,"href"))


#################### obtener los links de la tabla

# Lee tabla
tabla <- html_nodes(index,css="table")
print(tabla)


