

import UIKit


enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init (velocidadInicial : Velocidades) {
        self = velocidadInicial
    }
}

class Auto {
    var velocidad : Velocidades
    
    init () {
        velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    }
    
    func cambioDeVelocidad () -> (actual : Int, velocidadEnCadena : String) {
        let aux = velocidad
        switch (velocidad) {
        case .Apagado:
            velocidad = Velocidades.VelocidadBaja
            return (aux.rawValue , "Velocidad baja")
        case .VelocidadBaja:
            velocidad = Velocidades.VelocidadMedia
            return (aux.rawValue , "Velocidad media")
        case .VelocidadMedia:
            velocidad = Velocidades.VelocidadAlta
            return (aux.rawValue , "Velocidad alta")
        case .VelocidadAlta:
            velocidad = Velocidades.VelocidadMedia
            return (aux.rawValue , "Velocidad media")
        }
    }
}


var auto = Auto()

for  _  in 0...19 {
    print ("\(auto.cambioDeVelocidad())")
}
