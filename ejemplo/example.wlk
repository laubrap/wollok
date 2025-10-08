object pepita {
  var property energia = 100

  method vola(kilometros) {
    energia=energia-(kilometros*2)
  }

  method come(gramos) {
    energia = energia + (gramos*10)
  }
}

object emilia {

  method entrena(ave) {
    ave.come(5)
    ave.vola(10)
    ave.come(5)
  }
}

object juan {

  method entrena(ave) {
    ave.come(25)
    ave.vola(10)
    ave.come(2)
  }
}

object ramiro {
  
  var property horasDormidas=0 
  
  method estaDeBuenHumor() = horasDormidas >= 8

  method entrena(ave) { //debemos usar self ya que no podemos autorreferenciarnos sino
    const distancia = if (self.estaDeBuenHumor()) 15 else 30 //const no cambia luego de asignada
    ave.vola(distancia)
  }
}