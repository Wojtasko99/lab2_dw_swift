//
//  Card.swift
//  lab2_dw_swift
//
//  Created by student on 27/04/2024.
//

import SwiftUI

struct Card: View {
    @State var show: Bool = true;
    @State var icon: String;
    init(icon: String) {
        self.icon = icon
    }
    
    var body: some View {
        Group{
            ZStack{
                RoundedRectangle(cornerRadius: 12)
                    .fill(.white)
                    .frame(height: 120)
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(.blue,lineWidth: 2)
                    )
                    .onTapGesture {
                        show = !show
                    }
                Text(icon).font(.largeTitle)
                    RoundedRectangle(cornerRadius: 12)
                        .fill(.blue)
                        .frame(height: 120)
                        .opacity(show ? 1 : 0)
                        .onTapGesture {
                            show = !show
                        
                }
            }
        }.opacity(1)
        
            
            
    }
}
