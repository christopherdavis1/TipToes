//
//  HorizontalQuoteScroll.swift
//  TipToes
//
//  Created by Christopher Davis on 12/5/19.
//  Copyright © 2019 Curious Friends Club. All rights reserved.
//

import SwiftUI

struct HorizontalQuoteScroll: View {
    var body: some View {
        VStack {
            
            Spacer()
            
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack(alignment: .top, spacing: 16.0) {
                    QuoteCardComponent(quoteImage: "AlanWatts1", quoteBody: "No valid plans for the future can be made by those who have no capacity for living now.", quoteAttribution: "Alan Watts")
                    
                    QuoteCardComponent(quoteImage: "AlanWatts2", quoteBody: "What the devil is the point of surviving, going on living, when it's a drag? But you see, that's what people do.", quoteAttribution: "Alan Watts")
                    
                    QuoteCardComponent(quoteImage: "AlanWatts3", quoteBody: "The reason we want to go on and on is because we live in an impoverished present.", quoteAttribution: "Alan Watts")
                    
                    QuoteCardComponent(quoteImage: "AlanWatts2", quoteBody: "What the devil is the point of surviving, going on living, when it's a drag? But you see, that's what people do.", quoteAttribution: "Alan Watts")
                }
                .padding(.horizontal, 28)
                .padding(.bottom, 16)
            }
            
            PlaylistCard()
            
            Spacer()

        }
        .background(Color.white)
        .edgesIgnoringSafeArea(.all)
    }
}

struct HorizontalQuoteScroll_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalQuoteScroll()
    }
}
