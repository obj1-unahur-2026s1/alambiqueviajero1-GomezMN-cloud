object alambiqueVeloz {
    var combustibleActual = 10
    method combustible(){
        return combustibleActual
    }
    method realizarViaje(ciudad) {
        combustibleActual -= (ciudad.distancia() / 10).max(0)
    }
    method esVeloz() {
        return self.combustible() > 8
    }
}