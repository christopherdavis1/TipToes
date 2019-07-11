//
//  ClassDetailView.swift
//  TipToes
//
//  Created by Christopher Davis on 7/11/19.
//  Copyright © 2019 Curious Friends Club. All rights reserved.
//

import SwiftUI

struct ClassDetailView : View {
    var body: some View {
        
        // Pull Down icon
        VStack {
            VStack {
                Image(systemName: "chevron.compact.down")
                    .frame(width: 100, height: 32)
                    .foregroundColor(.gray)
                    .imageScale(.large)
                
                Text("This is the class page.")
            }
            .frame(height: 40)
            .padding(.top, 8)
            
            Spacer()
        }
    }
}

#if DEBUG
struct ClassDetailView_Previews : PreviewProvider {
    static var previews: some View {
        ClassDetailView()
            .previewDevice("iPhone XS Max")
    }
}
#endif
