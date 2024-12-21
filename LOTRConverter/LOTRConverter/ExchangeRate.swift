//
//  ExchangeRate.swift
//  LOTRConverter
//
//  Created by Muharrem Efe Çayırbahçe on 18.12.2024.
//

import SwiftUI

struct ExchangeRate: View {
    let leftImage: ImageResource
    let rightImage: ImageResource
    let text: String
    
    var body: some View {
        HStack {
            // Left Currency Image
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            
            // Exchange Rate
            Text(text)
            
            // Right Currency Image
            Image(rightImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
        }
    }
}

#Preview {
    ExchangeRate(leftImage: .silverpiece, rightImage: .goldpiece, text: "1 Gold Piece = 4 Silver Pieces")
}
