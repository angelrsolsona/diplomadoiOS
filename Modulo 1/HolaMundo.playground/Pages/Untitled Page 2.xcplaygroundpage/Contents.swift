//: [Previous](@previous)

import Foundation

var entero : Int = 100
var decimal : Double = 12.5
entero = Int(decimal)
var letra : Character = "A"
var cadena : String = "Esto es una cadena"

// concatenacion
var mensaje = "Hola" + "me llamo: "
let nombre  =  "Angel"

mensaje + nombre

// interpolacion: incrustar valores de variables en una cadena

mensaje = "Hola yo me llamo \(nombre)"

let cadenota = """
    los de ingenieria en computacion siempre han sido rockstars
    ahora los demas quieren serlo
"""

print(cadenota)



