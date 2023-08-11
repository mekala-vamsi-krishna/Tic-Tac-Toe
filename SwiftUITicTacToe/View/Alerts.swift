//
//  Aerts.swift
//  SwiftUITicTacToe
//
//  Created by Mekala Vamsi Krishna on 8/11/23.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    var title: Text
    var message: Text
    var buttonTitle: Text
}

struct AlertContext {
    static let humanWin = AlertItem(title: Text("You Win!"),
                             message: Text("You are so smart. You beat your own AI"),
                             buttonTitle: Text("Oops!"))
    
    static let computerWin = AlertItem(title: Text("You Lost!"),
                             message: Text("You lost with your own AI"),
                             buttonTitle: Text("Rematch"))
    
    static let draw = AlertItem(title: Text("Draw!"),
                             message: Text("What a battle of wits we have there..."),
                             buttonTitle: Text("Try Again"))
}
