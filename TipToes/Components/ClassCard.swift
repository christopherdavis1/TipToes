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
            ClassCardComponent(
                locationImage: "image-NAYMCA",
                classType: "Barre Class",
                classColor: "Purple1",
                classShadowColor: "ShadowPurple1",
                className: "YMCA Floyd County, New Albany",
                classDate: "Today",
                classTime: "12:00PM"
            )
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
        Group {
            VStack(alignment: .leading) {
                
                // Class Image
                Image(locationImage)
                    .resizable()
                    .frame(width: 285, height: 80, alignment: .center)
                    .overlay(
                        Rectangle()
                            .foregroundColor(Color(classColor))
                            .opacity(0.75)
                )
                
                // Class Info
                VStack(alignment: .leading) {
                    Text(classType)
                        .font(.callout)
                        .foregroundColor(.black)
                        .opacity(0.75)
                        .padding(.bottom, 8)
                    
                    Text(className)
                        .font(.title)
                        .foregroundColor(.white)
                        .padding(.bottom, 16)
                    
                    Text("\(classDate) at \(classTime)")
                        .font(.body)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(classColor))
                        .padding(.horizontal, 6.0)
                        .padding(.vertical, 4.0)
                        .background(Color(.white))
                        .cornerRadius(4)
                    
                }
                .padding(.horizontal)
                .padding(.bottom)
                
            }
            .frame(width: 285)
            .background(Color(classColor))
            .clipped()
            .cornerRadius(16)
            .shadow(color: Color(classShadowColor), radius: 4, x: 0, y: 4)
        }
    }
}
