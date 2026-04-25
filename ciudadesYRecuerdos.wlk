
object paris {
  method combustibleMinimo() {
    return 40
  }
  method recuerdo() {
    return llaveroTorreEiffel
  }
}
object Milei{
  method recuerdo() = "trae yerba y mate"
}
object alberto{
  method recuerdo() = "trae 100 gramos de yerba noma"
}
object buenosAires {
  method limite() {
    return 60
  }
  method recuerdo(presidente) {
    return presidente.recuerdo()
  }
}
object lasVegas {
  var homenajeActual = paris

  method limite() {
    homenajeActual.limite()
  }
  method homenaje() {
    return homenajeActual
  }
  method recuerdo() {
    return self.homenaje().recuerdo()
  }
  method cambiarHomenaje(nuevoHomenaje) {
    homenajeActual = nuevoHomenaje
  }
}
object bagdad {
  var recuerdoActual = "bidon de petroleo crudo"
  method recuerdo() {
    recuerdoActual
  }
  method nuevoRecuerdo(nuevoRecuerdo) {
    recuerdoActual = nuevoRecuerdo
  }
}

object llaveroTorreEiffel {
}