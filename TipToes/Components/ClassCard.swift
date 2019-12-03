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
            ClassCardComponent(locationImage: "image-NAYMCA", classType: "Barre Class", classColor: "Purple1", classShadowColor: "ShadowPurple1", className: "YMCA Floyd County, New Albany", classDate: "Today", classTime: "12:00PM")

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
    var classShadowColor: String
    var className: String
    var classDate: String
    var classTime: String
    
    
    var body: some View {
        VStack {
            
            VStack {
                
                // Location Image
                Image(locationImage)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 300, height: 100)
                    .clipShape(Rectangle())
                    .overlay(
                        Rectangle()
                            .opacity(0.5)
                            .foregroundColor(Color(classColor))
                    )
                    .padding(.bottom, -16)
                
                // Card Content
                VStack(alignment: .leading) {
                    Text(classType)
                        .font(.callout)
                        .fontWeight(.medium)
                        .padding(.vertical, 4)
                        .foregroundColor(Color("Text-Dark-semiAlpha"))
                    Text(className)
                        .lineLimit(3)
                        .font(.title)
                        .foregroundColor(Color.white)
                        .padding(.bottom, 12)
                    
                    Spacer()
                    
                    // Date and time
                    Text("\(classDate) at \(classTime)")
                        .font(.system(size: 15, weight: .semibold, design: .default))
                        .padding(4)
                        .padding(.horizontal, 6)
                        .background(Color.white)
                        .foregroundColor(Color(classColor))
                        .cornerRadius(4)
                }
                .padding()
            }
            
        }
        .frame(width: 285, height: 275)
        .clipped()
        .background(Color(classColor))
        .cornerRadius(12)
        .shadow(color: Color(classShadowColor), radius: 4, x: 2, y: 4)
        .padding(8)
    }
}
