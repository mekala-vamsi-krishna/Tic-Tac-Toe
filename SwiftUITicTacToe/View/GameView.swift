//
//  ContentView.swift
//  SwiftUITicTacToe
//
//  Created by Mekala Vamsi Krishna on 8/10/23.
//

import SwiftUI

struct GameView: View {
    
    @StateObject private var viewModel = GameViewModel()
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.white, .black], startPoint: .topLeading, endPoint: .bottomTrailing)
            GeometryReader { geometry in
                VStack {
                    Spacer()
                    LazyVGrid(columns: viewModel.columns) {
                        ForEach(0..<9) { i in
                            ZStack {
                                GameCircleView(proxy: geometry )
                                PlayerIndicatorView(systemImageName: viewModel.moves[i]?.indicators ?? "")
                            }
                            .onTapGesture {
                                viewModel.processHumanMoves(at: i)
                            }
                        }
                    }
                    Spacer()
                }
                .disabled(viewModel.isGameBoardDisabled)
                .padding()
                .alert(item: $viewModel.alertItem) { alertItem in
                    Alert(title: alertItem.title, message: alertItem.message, dismissButton: .default(alertItem.buttonTitle, action: {
                        viewModel.resetGame()
                    }))
                }
            }
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
