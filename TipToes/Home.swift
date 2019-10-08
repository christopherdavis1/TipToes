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
    
    var body: some View {
        Button(action: {self.showContentView.toggle() }) {
            VStack {
                Text("Launch Week View")
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
    }
}

#if DEBUG
struct Home_Previews : PreviewProvider {
    static var previews: some View {
        Home()
            .previewDevice("iPhone XS Max")
    }
}
#endif
