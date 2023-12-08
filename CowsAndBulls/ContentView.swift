//
//  ContentView.swift
//  CowsAndBulls
//
//  Created by Ricky David Groner II on 12/8/23.
//

import SwiftUI

struct ContentView: View {
    @State private var guess = ""
    @State private var guesses = [String]()
    @State private var answer = ""
    let answerLength = 4
    
    func submitGuess( ) {
        guesses.append(guess)
        guess = ""
    }
    
    func result(for guess: String) -> String {
        "Result"
    }
    
    func startNewGame() {
        guess = ""
        guesses.removeAll()
        answer = ""
        
        let numbers = (0...9).shuffled()
        
        for i in 0..<answerLength {
            answer.append(String(numbers[i]))
        }
    }
    
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                TextField("Enter a guess...", text: $guess)
                Button("Go", action: submitGuess)
            }
            .padding()
            
            List(guesses, id: \.self) { guess in
                HStack {
                    Text(guess)
                    Spacer()
                    Text(result(for: guess))
                }
            }
        }
        .frame(width: 250)
        .frame(minHeight: 300)
        .onAppear(perform: startNewGame)
    }
}

#Preview {
    ContentView()
}
