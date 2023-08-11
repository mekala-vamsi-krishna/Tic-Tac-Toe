//
//  GameCircleView.swift
//  SwiftUITicTacToe
//
//  Created by Mekala Vamsi Krishna on 8/11/23.
//

import SwiftUI

struct GameCircleView: View {
    
    var proxy: GeometryProxy
    
    var body: some View {
        Circle()
            .foregroundColor(.black.opacity(1))
            .frame(width: proxy.size.width / 3 - 15,
                   height: proxy.size.width / 3 - 15)
    }
}
