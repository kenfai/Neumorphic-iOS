//
//  ContentView.swift
//  Neumorphic
//
//  Created by Ginger on 26/10/2020.
//

import SwiftUI

struct ContentView: View {
    @State private var gold = 0.0
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color("Base"))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                // Card
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color("Base"))
                    .frame(width: 300, height: 180)
                    .shadow(color: Color("LightShadow"), radius: 8, x: -8, y: -8)
                    .shadow(color: Color("DarkShadow"), radius: 8, x: 8, y: 8)
                    .padding()
                
                HStack {
                    ZStack {
                        Circle()
                            .fill(Color("Base"))
                            .frame(width: 70, height: 70)
                            .shadow(color: Color("LightShadow"), radius: 8, x: -8, y: -8)
                            .shadow(color: Color("DarkShadow"), radius: 8, x: 8, y: 8)
                        
                        Image(systemName: "pencil.tip.crop.circle")
                            .font(.largeTitle)
                            .foregroundColor(.secondary)
                            
                    }
                    
                    Slider(value: $gold, in: 1...100)
                        .padding()
                }
                .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
