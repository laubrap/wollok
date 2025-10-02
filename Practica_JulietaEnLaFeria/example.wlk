
object julieta {
  const property punteria = 20
  var property fuerza = 80
  var cansancioTotal = 0 
  var property tickets = 15  

  method jugar(juego) {
    tickets = tickets + juego.obtenerTickets(self)
    cansancioTotal = cansancioTotal + juego.obtenerCansancio(self)
    fuerza = 80 - cansancioTotal
  }
}

object tiroAlBlanco {
  method obtenerTickets(chico) = chico.punteria() / 10
  method obtenerCansancio(chico) = 3
}

object pruebaDeFuerza {
  method obtenerTickets(chico) = if(chico.fuerza() >= 75) 20 else 0
  method obtenerCansancio(chico) = 8
}

object ruedaDeLaFortuna {
  const estAceitada = false
  method obtenerTickets(chico) = new Range(start = 1, end = 20).anyOne()
  method obtenerCansancio(chico) = if(estAceitada) 0 else 1

}