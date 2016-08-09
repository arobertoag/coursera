

import UIKit


enum Velocidades : Int {
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades) {
        self = velocidadInicial
    }
    
    func velocidadStr() -> String {
        switch self.rawValue {
            
        case Velocidades.Apagado.rawValue:
            return "Apagado"
            
        case Velocidades.VelocidadBaja.rawValue:
            return "Velocidad baja"
            
        case Velocidades.VelocidadMedia.rawValue:
            return "Velocidad media"
            
        case Velocidades.VelocidadAlta.rawValue:
            return "Velocidad alta"
            
        default:
            return "Neutro"
        }
    }
}

class Automovil {
    var velocidad : Velocidades
    
    init() {
        self.velocidad = Velocidades(velocidadInicial : Velocidades.Apagado)
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String) {
        
        switch self.velocidad.rawValue {
            
        case Velocidades.Apagado.rawValue:
            self.velocidad = Velocidades.VelocidadBaja
            
        case Velocidades.VelocidadBaja.rawValue:
            self.velocidad = Velocidades.VelocidadMedia
            
        case Velocidades.VelocidadMedia.rawValue:
            self.velocidad = Velocidades.VelocidadAlta
            
        case Velocidades.VelocidadAlta.rawValue:
            self.velocidad = Velocidades.VelocidadMedia
            
        default:
            self.velocidad = Velocidades.Apagado
        }
        
        return (self.velocidad.rawValue, velocidad.velocidadStr())
        
    }
}

var auto = Automovil()

for index in 1...20 {
    if (index == 1) {
        print("\(auto.velocidad.rawValue), \(auto.velocidad)")
    }
    
    var valores = auto.cambioDeVelocidad()
    print("\(valores.actual), \(valores.velocidadEnCadena)")
}