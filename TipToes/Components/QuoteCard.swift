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
            
            QuoteCardComponent(quoteImage: "AlanWatts2", quoteBody: "What the devil is the point of surviving, going on living, when it's a drag? But you see, that's what people do.", quoteAttribution: "Alan Watts")
            
            QuoteCardComponent(quoteImage: "AlanWatts3", quoteBody: "The reason we want to go on and on is because we live in an impoverished present.", quoteAttribution: "Alan Watts")
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
            VStack {
                Group {
                    Image(quoteImage)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .overlay(
                            Rectangle()
                                .foregroundColor(Color("Grey3"))
                                .opacity(0.9)
                                .overlay(
                                    HStack {
                                        Image(systemName: "quote.bubble.fill")
                                        Text("quote of the week")
                                            .font(.callout)
                                            .fontWeight(.medium)
                                            .padding(.bottom, 8)
                                        Spacer()
                                    }
                                    .opacity(0.75)
                                    .padding(.top, 80)
                                    .padding(.leading)
                            )
                                .foregroundColor(Color.white)
                    )
                }
                .frame(width: 344, height: 126, alignment: .center)
                .clipped()
                
                VStack(alignment: .leading) {
                    Text(quoteBody)
                        .font(.system(size: 22))
                        .lineLimit(8)
                        .padding(.top, 8)
                        .padding(.bottom, 8)
                        
                    Text(quoteAttribution)
                    .font(.callout)
                    .fontWeight(.bold)
                }
                .padding(.leading)
                .padding(.trailing)
                .padding(.bottom, 24)
            }
        }
        .frame(width: 344)
        .background(Color.white)
        .cornerRadius(16)
        .shadow(color: Color("Grey3Shadow"), radius: 4, x: 2, y: 4)
    }
}



//Rectangle()
//            .foregroundColor(Color("Grey3"))
//            .opacity(0.9)
//            .overlay(
//                VStack(alignment: .leading) {
//                    HStack{
//                        Image(systemName: "quote.bubble.fill")
//                        Text("quote")
//                            .padding(.bottom, 8)
//                            .font(.callout)
//                    }
//                    .opacity(0.75)
//
//                    Text(quoteBody)
//                        .font(.system(size: 22, weight: .regular))
//                        .lineLimit(8)
//                        .padding(.bottom, 12)
//
//                    Text(quoteAttribution)
//                        .font(.caption)
//                        .fontWeight(.bold)
//                }
//                .foregroundColor(Color.white)
//                .padding(.bottom, 8)
//                .padding(),
//
//                alignment: .leading
//        )
//)
