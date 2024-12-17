//
//  ContentView.swift
//  LOTRConverter
//
//  Created by Muharrem Efe Çayırbahçe on 16.12.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // Background Image
            Image(.background)
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                // Prancing Pony Logo
                Image(.prancingpony)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                
                // Currency Exchange Text
                Text("Currency Exchange")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                // Conversion Section
                HStack {
                    // Left Conversion Section
                    
                    VStack {
                        // Currency Picker
                        
                        HStack {
                            // Currency Image
                            Image(.silverpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 33)
                            
                            // Currency Text
                            Text("Silver Piece")
                                .font(.headline)
                                .foregroundColor(.white)
                        }
                        
                        // TextField
                        Text("Amount")
                        
                    }
                    
                    // Equal Sign
                    Image(systemName: "equal")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .symbolEffect(.pulse)
                    
                    
                    // Right Conversion Section
                    
                    VStack {
                        // Currency Picker
                        
                        HStack {
                            // Currency Text
                            Text("Gold Piece")
                                .font(.headline)
                                .foregroundColor(.white)
                            
                            // Currency Image
                            Image(.goldpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 33)
                        }
                        
                        // TextField
                        Text("Amount")
                    }
                    
                }
                
                Spacer()
                
                // Info Button
                Image(systemName: "info.circle.fill")
                    .font(.largeTitle)
                    .foregroundColor(.white)
            }
        }
    }
}

#Preview {
    ContentView()
}
