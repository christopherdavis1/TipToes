//
//  QuoteCard.swift
//  TipToes
//
//  Created by Christopher Davis on 12/4/19.
//  Copyright © 2019 Curious Friends Club. All rights reserved.
//

import SwiftUI

struct QuoteCard: View {
    var body: some View {
        
        // Quote Card
        VStack {
            QuoteCardComponent(quoteImage: "AlanWatts1", quoteBody: "No valid plans for the future can be made by those who have no capacity for living now.", quoteAttribution: "Alan Watts")
        }
    }
}




struct QuoteCard_Previews: PreviewProvider {
    static var previews: some View {
        QuoteCard()
    }
}


// Extracted Quote Card
struct QuoteCardComponent: View {
    
    var quoteImage: String
    var quoteBody: String
    var quoteAttribution: String
    
    var body: some View {
        Group {
            VStack(alignment: .leading) {
                HStack {
                    Image(systemName: "quote.bubble.fill")
                        .padding(.top, 4)
                    Text("quote")
                        .font(.callout)
                        .fontWeight(.semibold)
                }
                .padding(.bottom, 8)
                .opacity(0.5)
                
                Text(quoteBody)
                    .font(.system(size: 22))
                    .foregroundColor(.primary)
                    .fixedSize(horizontal: false, vertical: true)
                    .padding(.bottom, 12)
                
                Text(quoteAttribution)
                    .font(.callout)
                    .fontWeight(.bold)
            }
            .padding(.horizontal, 18)
            .padding(.vertical, 16)
            .frame(width: 342.0)
            .background(Color("Pink1"))
            .foregroundColor(Color("Pink3"))
            .cornerRadius(16)
            .clipped()
        }
        .shadow(color: Color("ShadowPink2"), radius: 4, x: 0, y: 2)
    }
}
