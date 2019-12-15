//
//  Home.swift
//  TipToes
//
//  Created by Christopher Davis on 7/11/19.
//  Copyright © 2019 Curious Friends Club. All rights reserved.
//

import SwiftUI

struct Home : View {
    
    @State var showContentView = false
    @State var showQuoteCard = false
    
    var body: some View {
        
        VStack {
            
            // Avatar
            AvatarComponent(instructorPhoto: "Meghan2")
            
            // Quote Card Button
            Button(action: {self.showContentView.toggle() }) {
                Group {
                    Text("Launch Class Locations")
                        .font(.callout)
                        .foregroundColor(.white)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.blue)
                        .cornerRadius(8)
                }.sheet(isPresented: self.$showContentView) {
                    ContentView()
                }
            }
            .padding()
            
            // Quote Card Button
            Button(action: {self.showQuoteCard.toggle() }) {
                Group {
                    Text("Launch Quote Card")
                        .font(.callout)
                        .foregroundColor(.white)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.blue)
                        .cornerRadius(8)
                }.sheet(isPresented: self.$showQuoteCard) {
                    ClassDetailView()
                }
            }
        }
    }
}

#if DEBUG
struct Home_Previews : PreviewProvider {
    static var previews: some View {
        Home()
    }
}
#endif
