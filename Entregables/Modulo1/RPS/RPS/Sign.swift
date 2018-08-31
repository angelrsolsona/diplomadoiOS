//
//  Sign.swift
//  RPS
//
//  Created by Angel Ricardo Solsona Nevero on 11/08/18.
//  Copyright © 2018 Angel Ricardo Solsona Nevero. All rights reserved.
//

import Foundation
import GameplayKit



enum Sign {
    case rock
    case paper
    case scissors
    
    var emoji: String{
        switch self {
            case .rock: return "👊"
            case .paper: return "🤚"
            case .scissors: return "✌️"
        }
        
    }
    
    
    func compare(_ machineSign:Sign) -> GameState {
        var statusGame:GameState = .start
        
        if (self == .rock && machineSign == .paper) ||
            (self == .paper && machineSign == .scissors) ||
            (self == .scissors && machineSign == .rock){
                statusGame = .lose
        }else if (self == .rock && machineSign == .scissors) ||
             (self == .paper && machineSign == .rock) ||
            (self == .scissors && machineSign == .paper){
            
                statusGame = .won
        }else if (self == .rock && machineSign == .rock) ||
                (self == .paper && machineSign == .paper) ||
            (self == .scissors && machineSign == .scissors){
            
            statusGame = .draw
        }
        
        return statusGame
        
        
    }

}
