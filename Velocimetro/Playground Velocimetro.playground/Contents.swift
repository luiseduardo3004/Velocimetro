//: Playground - noun: a place where people can play


import UIKit

enum Velocidades: Int {
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init(velocidadInicial: Velocidades) {
        self = velocidadInicial
    }
}

class Auto {
    
    var velocidad: Velocidades
    
    init() {
        self.velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena: String) {
        
        switch velocidad {
            
        case .Apagado :
            velocidad = .VelocidadBaja
            return (velocidad.rawValue, "Velocidad Baja")
        case .VelocidadBaja:
            velocidad = .VelocidadMedia
            return (velocidad.rawValue, "Velocidad Media")
        case .VelocidadMedia:
            velocidad = .VelocidadAlta
            return (velocidad.rawValue, "Velocidad Alta")
        case .VelocidadAlta:
            velocidad = .VelocidadMedia
            return (velocidad.rawValue, "Velocidad Media")
            
        }
    }
}


var auto:Auto = Auto()

print("\(auto.velocidad.rawValue), \(auto.velocidad)")

var resultado:(actual: Int, velocidadEnCadena: String)

for index in 1...20 {
    
    resultado = auto.cambioDeVelocidad()
    print("\(resultado.actual), \(resultado.velocidadEnCadena)")
}
