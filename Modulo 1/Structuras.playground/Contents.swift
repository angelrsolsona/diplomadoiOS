//: Playground - noun: a place where people can play

import UIKit


var valor = 4
func cambiaValor(otroNombre params: inout Int) -> Int{
    
    params += 1
    return params
}

var prueba = cambiaValor(otroNombre: &valor)

struct Alumno {
    var nombre: String
    var edad: Int
    var carrera: String = "Ing. Computacion" {
    
        willSet{
            print("Este sera el nuevo valor \(newValue)")
        }
        
        didSet{
            print("Este fue el valor asignado \(oldValue)")
        }
    }
    
    
    mutating func cambiaValor(){  // esto permite que la variable se modificable un valor de una structura no puede ser cambiado desde adentro solo fuera de ella o agregando el mutating
        self.nombre = "nobody"
    }
    
    init(nombre:String) {
        self.nombre = nombre
        self.edad = 0
        self.carrera = "ingenieria"
        
    }
}

var alumno = Alumno(nombre: "angel")
alumno.carrera = "Lic. Contaduria"
alumno.carrera = "Trabajo Social"

class Profesor{
    var nombre : String = "none"
}

var german  =  Profesor()
german.nombre





