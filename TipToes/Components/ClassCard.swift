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
            ClassCardComponent(locationImage: "locationImagePlaceholder", classType: "Barre Class", classColor: "Purple1", className: "YMCA Floyd County, New Albany", classDate: "Today", classTime: "12:00PM")
        }
    }
}



struct ClassCard_Previews: PreviewProvider {
    static var previews: some View {
        ClassCard()
    }
}


// Extacted Card Component
struct ClassCardComponent: View {
    
    var locationImage: String
    var classType: String
    var classColor: String
    var className: String
    var classDate: String
    var classTime: String
    
    
    var body: some View {
        VStack {
            
            VStack {
                
                // Location Image
                Image(locationImage)
                    .resizable()
                    .frame(width: 285, height: 100, alignment: .center)
                    .scaledToFill()
                    .padding(.bottom, -16)
                
                // Card Content
                VStack(alignment: .leading) {
                    Text(classType)
                        .font(.callout)
                        .fontWeight(.medium)
                        .padding(.vertical, 4)
                        .foregroundColor(Color("Text-Dark-semiAlpha"))
                    Text(className)
                        .font(.title)
                        .lineLimit(3)
                        .foregroundColor(Color.white)
                        .padding(.bottom, 12)
                    
                    // Date and time
                    Text("\(classDate) at \(classTime)")
                        .font(.system(size: 14, weight: .medium, design: .default))
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
        .background(Color(classColor))
        .shadow(color: Color("ShadowPurple1"), radius: 4, x: 2, y: 4)
        .cornerRadius(12)
    }
}
