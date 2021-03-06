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
        
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                
                // Horizontal Scrollview of Classes
                HStack(alignment: .top, spacing: 16.0) {
                    ClassCardComponent(locationImage: "image-NAYMCA", classType: "Barre Class", classColor: "Purple1", classShadowColor: "ShadowPurple1", className: "YMCA Floyd County, New Albany", classDate: "Today", classTime: "12:00PM")
                    
                    ClassCardComponent(locationImage: "image-NortheastYMCA", classType: "Barre Class", classColor: "Pink2", classShadowColor: "ShadowPink2", className: "Northeast YMCA, Lyndon", classDate: "Wednesdays", classTime: "6:30PM")
                    
                    ClassCardComponent(locationImage: "image-TheWell", classType: "Barre Class", classColor: "Green1", classShadowColor: "ShadowGreen1", className: "The Wel at Humana", classDate: "Thursdays", classTime: "8:00AM")
                }
                .padding(.horizontal, 24)
            }
        }
    }
}

struct HorizontalClassScroll_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalClassScroll()
    }
}
