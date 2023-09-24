//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Anna Zaitsava on 24.09.23.
//

import SwiftUI

struct ContentView: View {
    
   @State var leftDice = 1
    @State var rightDice = 1
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(n: leftDice)
                    DiceView(n: rightDice)
                }
                .padding(.horizontal)
                Spacer()
                
                Button("Roll") {
                    leftDice = Int.random(in: 1...6)
                    rightDice = Int.random(in: 1...6)
                    
                }
                .padding(.horizontal)
                .font(.system(size: 50))
                .fontWeight(.bold)
                .foregroundColor(.white)
                .background(.red)
                

            }
            .padding()
            
        }
    }
}
struct DiceView: View {
    let n: Int
    
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


