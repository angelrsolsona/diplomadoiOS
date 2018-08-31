//: Playground - noun: a place where people can play

import UIKit

class Alumno {
    let nombre : String
    init(nombre: String) {
        self.nombre = nombre
    }
    
    func estudiar(){
        
        print("Alumno estudiando")
        
    }
}

let luis = Alumno(nombre: "Luis")
luis.estudiar()

class Ingeniero: Alumno{
    
    let promedio: Double
    
    override init(nombre: String) {
        self.promedio = 10.0
        super.init(nombre: nombre)
    }
    
    override func estudiar() {
        print("Los inges estudian perron, fierror!!")
    }
}

let julio = Ingeniero(nombre: "Julio")

