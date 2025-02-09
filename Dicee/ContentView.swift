//
//  ContentView.swift
//  Dicee
//
//  Created by danylo on 22.01.2025.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 2
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable(resizingMode: .stretch)
                .ignoresSafeArea()
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(diceNumber: leftDiceNumber)
                    DiceView(diceNumber: rightDiceNumber)
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                    leftDiceNumber = Int.random(in: 1...6)
                    rightDiceNumber = Int.random(in: 1...6)
                }){
                    Text("Roll")
                        .font(.system(size: 35))
                        .foregroundColor(.white)
                        .padding()
                }
                .background(Color.red)
                .cornerRadius(20)
            }
        }
        
    }
}

struct DiceView: View {
    
    let diceNumber: Int
    
    var body: some View {
        Image("dice\(diceNumber)")
            .resizable(resizingMode: .stretch)
            .frame(width: 130.0, height: 130.0)
            .padding()
    }
}

#Preview {
    ContentView()
}
