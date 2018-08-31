//: Playground - noun: a place where people can play

import UIKit

var str:String? = "La cadena"

if let prueba = str {  // optional winding
    print(prueba)
}

let string = "123"
let posibleNumber = Int(string)

let string2 = "Hola"
let posibleNumber2 = Int(string2)


struct Toddler {
    var name: String
    var monthsOld: Int
    
    init?(name: String, monthsOld: Int) {  /// esto se llama failable inicialicer inicializador
        if (monthsOld > 12){
            return nil
        }else{
            self.name = name
            self.monthsOld = monthsOld
        }
    }
}

let myBoy  = Toddler(name: "Leonardo", monthsOld: 12)

// casteo Type Inspection Type Casting Type Any  As is Inspeccion de codigo



