//
//  Model.swift
//  SwiftUITicTacToe
//
//  Created by Mekala Vamsi Krishna on 8/11/23.
//

import Foundation

enum Player {
    case human, computer
}

struct Move {
    let player: Player
    let boardIndex: Int
    
    var indicators: String {
        return player == .human ? "xmark" : "circle"
    }
}
