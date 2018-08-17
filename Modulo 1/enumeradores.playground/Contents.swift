//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

enum LunchChoice {
    case pasta
    case burger
    case soup
    case pizza, cafe
    
    var order: String {
        switch self {
        case .burger:
            return "🍔"
        case .pasta, .soup:
            return "hay oferta"
        default:
            return "🥑"
        }
    }
}

var foodEnum = LunchChoice.burger
foodEnum = .burger

foodEnum.order

enum Suit {
    case spades, hearts, diamonds, clubs
    var rank: Int {
        switch self {
            case .spades: return 4
            case .hearts: return 3
            case .diamonds: return 2
            case .clubs: return 1
        }
    }
    
    func beats(_ otherSuit: Suit) -> Bool{
        return self.rank > otherSuit.rank
    }
}

var mySuit: Suit = .spades
var yourSuit: Suit = .diamonds
mySuit.beats(yourSuit)





