object shrek {
  const property misiones = #{} 

  method agregarMision(mision) {misiones.add(mision)}
    
  method cantidadDeMisiones() = misiones.size()

  method misionesDificiles() = misiones.filter({mision => mision.esDificil()})

  method solicitantesDeMisiones() = misiones.map({mision => mision.solicitante()})

  method totalPuntosDeRecompensa() = misiones.sum({mision => mision.puntosRecompensa()})
}

object liberarAFiona {
  var property cantidadDeTrolls = 4
  
  method solicitante() = "Lord Farquaad"

  method esDificil() = cantidadDeTrolls.between(4,5)

  method puntosRecompensa() = cantidadDeTrolls * 2 
}

object buscarPiedraFilosofal {
  method solicitante() = "Dumblegore"

  const distanciaItem = 40 

  method esDificil() = distanciaItem >100

  method puntosRecompensa() = if(distanciaItem>50) 10 else 5 
}