//
//  GameState.swift
//  RPS
//
//  Created by Angel Ricardo Solsona Nevero on 17/08/18.
//  Copyright © 2018 Angel Ricardo Solsona Nevero. All rights reserved.
//

import Foundation

enum GameState {
    case start
    case won
    case lose
    case draw
    
    var texto: String {
        switch self {
        case .start:
            return "Rock, Paper, Scissors"
        case .won:
            return "You Won"
        case .lose:
            return "You Lose"
        case .draw:
            return "Draw"
        default:
            return ""
        }
    }
}
