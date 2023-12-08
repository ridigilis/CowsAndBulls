//
//  ContentView.swift
//  CowsAndBulls
//
//  Created by Ricky David Groner II on 12/8/23.
//

import SwiftUI

struct ContentView: View {
    let guesses = Array(repeating: "1234", count: 20)
    
    func submitGuess( ) {
        
    }
    
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                TextField("Enter a guess...", text: .constant("1234"))
                Button("Go", action: submitGuess)
            }
            .padding()
            
            List(guesses, id: \.self) { guess in
                HStack {
                    Text(guess)
                    Spacer()
                    Text("4c 0b")
                }
            }
        }
        .frame(width: 250)
        .frame(minHeight: 300)
    }
}

#Preview {
    ContentView()
}
