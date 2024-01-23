//
//  Yes.swift
//  Rock, paper, scissors
//
//  Created by 4d on 1/22/24.
//

import Foundation

enum Gamestate{
case win, lose, draw, start

}

enum Sign{
    case rock, paper, scissors
    
    var emoji: String{
        switch self{
        case .paper:
            return "✋"
        case .scissors:
            return "✌️"
        case.rock:
            return "👊"
        }
    }
    
    
    func checkWin(opponent:Sign) -> Gamestate{
        if(self == .rock && opponent == .scissors){
            return .win
        }
        else if(self == .rock && opponent == .paper){
            return .lose
            
        }
        else if(self == .paper && opponent == .scissors){
            return .lose
        }
        else if(self == .paper && opponent == .rock){
            return .win
        }
        else if(self == .scissors && opponent == .rock){
            return .lose
        }
        else if(self == .scissors && opponent == .paper){
            return .win
        }
        
        return .draw
    }
    

}
func randomSign() -> Sign {
  let sign = Int.random(in: 0...2)
    if sign == 0 {
        return .rock
        
    }
    else if sign == 1{
        return .paper
    }
    else {
        return .scissors
        
    }
}
