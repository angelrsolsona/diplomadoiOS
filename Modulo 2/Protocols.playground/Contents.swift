//: Playground - noun: a place where people can play

import UIKit

class Alumno: CustomStringConvertible{
    var nombre: String = "nobody"
    
    var description: String {
        return "Yo soy \(nombre)"
    }
}
var angel = Alumno()
print(angel)


struct Empleado: Equatable, Comparable, Codable {

    var nombre: String
    var apellidos: String
    var edad: Int
    
    static func  == (izquierdo: Empleado, derecho:Empleado) -> Bool{
        return izquierdo.nombre == derecho.nombre && izquierdo.apellidos == izquierdo.apellidos
    }
    
    static func < (lhs: Empleado, rhs: Empleado) -> Bool {
        return lhs.edad < rhs.edad
    }
}


var godin1 = Empleado(nombre: "Junito", apellidos: "Perez", edad:15)
var godin2 = Empleado(nombre: "Juan", apellidos: "Reyes", edad:18)
var godin3 = Empleado(nombre: "Junito", apellidos: "Perez", edad:17)
var godin4 = Empleado(nombre: "Juan", apellidos: "Reyes", edad:19)
var godin5 = Empleado(nombre: "Junito", apellidos: "Perez", edad:20)
var godin6 = Empleado(nombre: "Juan", apellidos: "Reyes", edad:12)

godin1 == godin2

let  empleados = [godin1,godin2,godin3,godin4,godin5, godin6]

let empleadosOrdenados = empleados.sorted(by:<)
for elemnt in empleadosOrdenados{
    print(elemnt)
}

let jsonEncoder = JSONEncoder()

if let jsonData = try? jsonEncoder.encode(godin1), let jsonString = String(data: jsonData, encoding: .utf8){
    print(jsonString)
}


protocol NombreCompleto{
    var nombreCompleto:String { get }
    func diNombreCompleto()
}

struct Persona: NombreCompleto{
    var nombre:String
    var apellidos:String
    var nombreCompleto: String {
        return "\(nombre) \(apellidos)"
    }
    
    func diNombreCompleto() {
        print(nombreCompleto)
    }
}

var manuel = Persona(nombre: "Manuel", apellidos: "Manita Santa")
manuel.diNombreCompleto()

let view = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
view.backgroundColor = UIColor.blue

