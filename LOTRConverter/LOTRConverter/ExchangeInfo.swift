//
//  ExchangeInfo.swift
//  LOTRConverter
//
//  Created by Muharrem Efe Çayırbahçe on 18.12.2024.
//

import SwiftUI

struct ExchangeInfo: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            // Background Image
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            
            VStack {
                // Title
                Text("Exchange Rates")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                    .padding(.bottom)
                    .minimumScaleFactor(0.8)
                
                // Description
                Text("Here at the Prancing Pony, we are happy to offer you a place where you can exchange all the known currencies in the entire world except one. We used to take Brandy Bucks, but after finding out that it was a person instead of a piece of paper, we realized it had no value to us. Below is a simple guide to our currency exchange rates:")
                    .font(.body)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .lineSpacing(5)
                    .padding(.horizontal, 20)
                    .padding(.bottom)
                    .minimumScaleFactor(0.8)
                
                // Exchange Rates
                
                VStack(spacing: 15) {
                    ExchangeRate(leftImage: .goldpiece, rightImage: .goldpenny, text: "1 Gold Piece = 4 Gold Pennies")
                    ExchangeRate(leftImage: .goldpenny, rightImage: .silverpiece, text: "1 Gold Penny = 4 Silver Pieces")
                    ExchangeRate(leftImage: .silverpiece, rightImage: .silverpenny, text: "1 Silver Piece = 4 Silver Pennies")
                    ExchangeRate(leftImage: .silverpenny, rightImage: .copperpenny, text: "1 Silver Penny = 100 Copper Pennies")
                }
                .padding()
                .background(Color.brown.opacity(0.25))
                .cornerRadius(15)
                .shadow(radius: 10)
                
                // Button
                
                Button("Done") {
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown.mix(with: .black, by: 0.2))
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)
            }
            .foregroundStyle(.black)
        }
    }
}

#Preview {
    ExchangeInfo()
}

