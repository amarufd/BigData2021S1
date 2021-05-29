

pagoPasajeTransantiago <- function(saldo,persona){
  if(saldo >= 800){
    # proceso de pago del pasaje
    nuevoSaldo <- saldo - 800
    print(paste(persona,"tu nuevo saldo es:",nuevoSaldo))
    return(nuevoSaldo)
  }else{
    # Logica cuando no hay saldo
    print(paste(persona,"no tienes saldo suficiente"))
    return(saldo)
  }
}

nuevoSaldo <- pagoPasajeTransantiago(600,"Fito Paez")
print(nuevoSaldo)

nuevoSaldo <- pagoPasajeTransantiago(1000,"Tony Stark")
print(nuevoSaldo)

# esto no funciona, mucho cuidadod con el orden de las variables
nuevoSaldo <- pagoPasajeTransantiago("Dali",3000)
print(nuevoSaldo)

