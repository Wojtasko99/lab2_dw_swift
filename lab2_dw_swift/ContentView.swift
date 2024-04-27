//
//  ContentView.swift
//  lab2_dw_swift
//
//  Created by student on 27/04/2024.
//

import SwiftUI

struct ContentView: View {
    @State var icons: [String] = ["🥰","😀","👺","👻","😈","🎃","😇","🤣","😝","🦉","🧂","🥃"]
    @State var numberOfCardsDisplayed: Int = 6
    
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 120))]){
                    ForEach(icons.prefix(numberOfCardsDisplayed), id: \.self) { icon in
                        Card(icon: icon)
                    }
                }
                    .foregroundColor(.blue)
                    .padding()
            }
            HStack {
                Button(action: {
                    adjustCardNumber(by: -2)
                }) {
                    Image(systemName: "minus.circle.fill")
                        .font(.title)
                }
                .disabled(numberOfCardsDisplayed <= 2)
                
                
                Button(action: {
                    adjustCardNumber(by: 2)
                }) {
                    Image(systemName: "plus.circle.fill")
                        .font(.title)
                }
                .disabled(numberOfCardsDisplayed >= icons.count)
            }
            .padding()
        }
    }
    
    func adjustCardNumber(by offset: Int) {
        let newNumber = numberOfCardsDisplayed + offset
        if newNumber >= 2 && newNumber <= icons.count {
            numberOfCardsDisplayed = newNumber
        }
    }
}

