//: Playground - noun: a place where people can play

import UIKit

var nombres: [String] = ["Luis", "Paco", "Hugo"]
var otrosNombres = ["Fer", "Mario", "Luis"]
var otraForma: [String] = []
var otraFormaMas: Array<String> = []
var unaMas = [Int]()

var numeros = [4, 5, 6]
if numeros.contains(5){
    print("Ese elemento existe")
}

var miArray = [Int](repeating: 0, count: 100)
miArray.count
miArray.isEmpty
miArray[1] = 4
miArray.append(100)
dump(miArray)
miArray += [88,93]
dump(miArray)
miArray.insert(80, at: 5)
miArray.remove(at: 3)
miArray.removeAll()

var array1 = [1, 2, 3]
var array2 = [1, 2, 3]
miArray = array1 + array2
let containerArray = [array1, array2]

var scores = ["Pumas":10, "CA":10, "AME":8]
var otrosScores = [String:Int]()
var otraFormDict = Dictionary<String, Int>()
var ultimaForma: [String: Int] = [:]

scores["Pumas"] = 14
let oldValue = scores.updateValue(11, forKey: "CA")
scores["CA"] = nil

let equipos = Array(scores.keys)
let puntos = Array(scores.values)

if let myScore =  scores["Pumas"]{   // opcional winding
    print(myScore)
}



