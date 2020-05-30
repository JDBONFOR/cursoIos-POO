import UIKit

// Clases - moldes con los que creamos objetos.
class Persona {
    
    // a las variables de un objeto, se le llama propiedades
    var nombre:String = "Miranda"
    var edad:Int = 21
    var colorCamisa:String = ""
    
    var color = Colores()
    
    func saludo() -> String {
        colorCamisa = color.colorAzul
        
        return "Me llamo \(nombre), y tengo \(edad) años. Uso una camisa color \(colorCamisa)"
    }
}

class Colores {
    var colorAzul:String = "Azul"
    var colorRojo:String = "Rojo"
}

var objetoPersona = Persona()
objetoPersona.saludo()

