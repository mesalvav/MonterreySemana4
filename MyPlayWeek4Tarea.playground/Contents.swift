//: Playground - Auto y velocidades con Class and Enum
//
// by Mario E. SV
import UIKit

enum Velocidades : Int {
    case Apagado = 0, Velocidad_Baja = 20, Velocidad_Media = 50, Velocidad_Alta = 120
    
    init(velocidadInicial: Velocidades){
        self = velocidadInicial
    }
}

class Auto {
    var velocidad: Velocidades
    
    init() {
        self.velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    func cambioDeVelocidad()-> (actual: Int, velocidadEnCadena: String) {
        let temporal = self.velocidad
        
        switch self.velocidad {
        case .Apagado:
            self.velocidad = .Velocidad_Baja
        case .Velocidad_Baja:
            self.velocidad = .Velocidad_Media
        case .Velocidad_Media:
            self.velocidad = .Velocidad_Alta
        case .Velocidad_Alta:
            self.velocidad = .Velocidad_Media
        }
        return (temporal.rawValue, "\(temporal)")
    }
}

let auto = Auto()

for i in 0..<20 {
    let (velocimetro, velocidad) = auto.cambioDeVelocidad()
    print("\(velocimetro), \(velocidad) " )
    }


