//
//  HorizontalClassScroll.swift
//  TipToes
//
//  Created by Christopher Davis on 12/3/19.
//  Copyright © 2019 Curious Friends Club. All rights reserved.
//

import SwiftUI

struct HorizontalClassScroll: View {
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            
            // Horizontal Scrollview of Classes
            HStack {
                ClassCardComponent(locationImage: "locationImagePlaceholder", classType: "Barre Class", classColor: "Purple1", classShadowColor: "ShadowPurple1", className: "YMCA Floyd County, New Albany", classDate: "Today", classTime: "12:00PM")
                
                ClassCardComponent(locationImage: "locationImagePlaceholder", classType: "Barre Class", classColor: "Purple1", classShadowColor: "ShadowPurple1", className: "YMCA Floyd County, New Albany", classDate: "Today", classTime: "12:00PM")
                
                ClassCardComponent(locationImage: "locationImagePlaceholder", classType: "Barre Class", classColor: "Purple1", classShadowColor: "ShadowPurple1", className: "YMCA Floyd County, New Albany", classDate: "Today", classTime: "12:00PM")
            }
            .padding()
        }
    }
}

struct HorizontalClassScroll_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalClassScroll()
    }
}
