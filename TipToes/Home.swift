//
//  Home.swift
//  TipToes
//
//  Created by Christopher Davis on 7/11/19.
//  Copyright © 2019 Curious Friends Club. All rights reserved.
//

import SwiftUI

struct Home : View {
    var body: some View {
        
        PresentationLink(destination: ContentView()) {
            VStack {
                Text("Launch Week View")
                    .font(.callout)
                    .color(.white)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.blue)
                    .cornerRadius(8)
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
