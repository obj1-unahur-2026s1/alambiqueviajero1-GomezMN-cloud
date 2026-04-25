object alambiqueVeloz {
    var combustibleActual = 100
    method combustible(){
        return combustibleActual
    }
    method realizarViaje(ciudad) {
        combustibleActual -= (10).max(0)
        self.combustibleNecesario(ciudad)
    }
    method esVeloz(ciudad) {
        return self.combustible() > 8
    }
    method combustibleNecesario(ciudad) {
        return self.combustible() >= ciudad.limite() 
    }
}