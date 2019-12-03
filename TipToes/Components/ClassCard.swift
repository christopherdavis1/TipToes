//
//  SwiftUIView.swift
//  TipToes
//
//  Created by Christopher Davis on 12/2/19.
//  Copyright © 2019 Curious Friends Club. All rights reserved.
//

import SwiftUI

struct ClassCard: View {
    var body: some View {
        
        // Card Wrapper
        Group {
            
            VStack {
                
                // Location Image
                Image("locationImagePlaceholder")
                    .resizable()
                    .frame(width: 285, height: 100, alignment: .center)
                    .scaledToFill()
                    .padding(.bottom, -16)
                
                // Card Content
                VStack(alignment: .leading) {
                    Text("Barre class")
                        .font(.callout)
                        .fontWeight(.medium)
                        .padding(.vertical, 4)
                        .foregroundColor(Color("Text-Dark-semiAlpha"))
                    Text("YMCA Floyd County, New Albany")
                        .font(.title)
                        .lineLimit(3)
                        .foregroundColor(Color.white)
                        .padding(.bottom, 12)
                    
                    // Date and time
                    Text("Today at 12:00PM")
                        .font(.system(size: 14, weight: .bold, design: .default))
                        .padding(4)
                        .padding(.horizontal, 6)
                        .background(Color.white)
                        .foregroundColor(Color("Purple1"))
                        .cornerRadius(4)
                }
                .padding()
            }
            
        }
        .frame(width: 285, alignment: .top)
        .clipped()
        .background(Color("Purple1"))
        .cornerRadius(12)
        .shadow(color: Color("ShadowPurple1"), radius: 4, x: 2, y: 4)
    }
}

struct ClassCard_Previews: PreviewProvider {
    static var previews: some View {
        ClassCard()
    }
}
