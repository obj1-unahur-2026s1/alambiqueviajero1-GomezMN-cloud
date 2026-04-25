/*
Se conocen los siguientes recuerdos:
- El recuerdo típico de París es un llavero de la torre eiffel.
- Buenos Aires tiene como recuerdo típico un mate, pero dependiendo de quién sea el presidente puede venir con yerba o no.
- El recuerdo típico de Bagdad va cambiando con los años, en algún momento pudo haber sido un bidón con petróleo crudo,
 alguna de las armas de destrucción masiva que nunca se encontraron o una réplica de los míticos jardines colgantes de Babilonia.
  O tal vez en el momento que viaje Luke sea otro diferente. 
- Las Vegas, mas que tener algo típico propio, hace "homenaje" a otros lugares. Por ejemplo, si es visitada cuando se está
 conmemorando a París, el recuerdo es también el llavero de la torre eiffel y si se estuviera recordando a Buenos Aires, sería el mate. 
- Cada viaje que hace el alambique veloz consume una cierta cantidad de combustible. 

Para poder ir a las ciudades, hay diferentes restricciones en las que interviene el vehículo que maneja Luke, que en principio es el Alambique veloz:
- París, tiene que tener suficiente combustible
- Buenos Aires, tiene que ser rápido
- Bagdad no hay restricciones
- Las Vegas: la misma restricción del lugar que se esté homenajeando 
*/
object paris {
  method recuerdo() {
    return llaveroTorreEiffel
  }
}
object argentina {
  var presidenteActual = "macsri"
  method esPresidente() {
    return presidenteActual
  }
  method cambioDePresidente(presidenteNuevo) {
    presidenteActual = presidenteNuevo
  }
}
object buenosAires {
  method recuerdo() {
    return mate
  }
}
object lasVegas {
  var homenajeActual = paris
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
object llaveroTorreEiffel {
  method esRecuerdo() = true
}
object mate {
  method esRecuerdo() = true 
}
object name {
  
}