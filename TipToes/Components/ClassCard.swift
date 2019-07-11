//
//  ClassCard.swift
//  TipToes
//
//  Created by Christopher Davis on 7/11/19.
//  Copyright © 2019 Curious Friends Club. All rights reserved.
//

import SwiftUI

struct ClassCard : View {
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16.0) {
                ForEach(0 ..< 3) { item in
                    PresentationLink(destination: ClassDetailView()) {
                        SingleClassCard()
                    }
                }
            }
            .padding(.leading, 32)
            .padding(.trailing)
        }
        
    }
}

#if DEBUG
struct ClassCard_Previews : PreviewProvider {
    static var previews: some View {
        ClassCard()
            .previewDevice("iPhone XS Max")
    }
}
#endif



struct SingleClassCard : View {
    var body: some View {
        return VStack {
            
            Image("locationImagePlaceholder")
                .resizable()
                .frame(width: 285, height: 105)
                .aspectRatio(contentMode: .fill)
                .clipShape(Rectangle())
                .blendMode(.overlay)
            
            VStack(alignment: .leading) {
                
                Text("Teaching Barre at:")
                    .color(.black)
                    .font(.footnote)
                
                Text("YMCA Floyd County, New Albany")
                    .color(.white)
                    .font(.headline)
                    .fontWeight(.regular)
                    .lineLimit(nil)
                
                HStack {
                    Text("TODAY")
                        .font(.caption)
                        .fontWeight(.heavy)
                        .color(Color("Purple1"))
                        .padding(4)
                        .background(Color.white)
                        .cornerRadius(4)
                        .frame(minWidth:0)
                    Text("12:00")
                        .font(.callout)
                        .color(.white)
                }
            }
                
                .padding(.top, 8)
            
            Spacer()
        }
        .frame(width: 285, height: 235)
            .background(Color("Purple1"))
            .cornerRadius(16)
            .shadow(radius: 4)
            .shadow(color: Color("Grey1"), radius: 10, x: 0, y: 4)
    }
}
