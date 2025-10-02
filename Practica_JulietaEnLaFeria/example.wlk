
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

  method puedeCanjearAlgunPremio() = self.tickets() >= ositoDePeluche.precio() 
  || self.tickets() >= taladroRotopercutor.precio()
}

object gerundio {
  var property fuerza = 110
  var cansancioTotal = 0 

  method jugar(juego) {
    cansancioTotal = cansancioTotal + juego.obtenerCansancio(self)
    fuerza = 80 - cansancioTotal
  }

  method puedeCanjearAlgunPremio() = true
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

object precioDolar {
  var property precio = 67
}

object ositoDePeluche{
  const property precio = 45 
}

object taladroRotopercutor{
  var property precio = precioDolar.precio()
}