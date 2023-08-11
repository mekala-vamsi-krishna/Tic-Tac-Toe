//
//  PlayerIndicatorView.swift
//  SwiftUITicTacToe
//
//  Created by Mekala Vamsi Krishna on 8/11/23.
//

import SwiftUI

struct PlayerIndicatorView: View {

    var systemImageName: String
    
    var body: some View {
        Image(systemName: systemImageName)
            .resizable()
            .frame(width: 40, height: 40)
            .foregroundColor(.white)
    }
}
