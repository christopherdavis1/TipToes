//
//  ClassCard.swift
//  TipToes
//
//  Created by Christopher Davis on 7/11/19.
//  Copyright © 2019 Curious Friends Club. All rights reserved.
//

import SwiftUI

struct ClassCard : View {
    
    @State var ShowClassCard = false
    
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16.0) {
                ForEach(0 ..< 3) { item in
                    
                    Button(action: { self.ShowClassCard.toggle() }) {
                        SingleClassCard()
                    }
                    
//                    PresentationLink(destination: ClassDetailView()) {
//                        SingleClassCard()
//                    }
                }.sheet(isPresented: $ShowClassCard) { ClassDetailView() }
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
                    .foregroundColor(.black)
                    .font(.footnote)
                
                Text("YMCA Floyd County, New Albany")
                    .foregroundColor(.white)
                    .font(.headline)
                    .fontWeight(.regular)
                    .lineLimit(nil)
                
                HStack {
                    Text("TODAY")
                        .font(.caption)
                        .fontWeight(.heavy)
                        .foregroundColor(Color("Purple1"))
                        .padding(4)
                        .background(Color.white)
                        .cornerRadius(4)
                        .frame(minWidth:0)
                    Text("12:00")
                        .font(.callout)
                        .foregroundColor(.white)
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
