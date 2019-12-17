//
//  InstructorAvatar.swift
//  TipToes
//
//  Created by Christopher Davis on 12/15/19.
//  Copyright © 2019 Curious Friends Club. All rights reserved.
//

import SwiftUI

struct InstructorAvatar: View {
    
    var body: some View {
        
        Group {
            AvatarComponent(instructorPhoto: "Meghan2")
        }
    }
}

struct InstructorAvatar_Previews: PreviewProvider {
    static var previews: some View {
        InstructorAvatar()
    }
}

struct AvatarComponent: View {
    
    @State private var isPulsing = false
    
    var instructorPhoto: String
    
    var body: some View {
        ZStack {
            Circle().stroke(Color("Pink1"), lineWidth: 4)
                .frame(width: isPulsing ? 150 : 75, height: isPulsing ? 150 : 75)
                .opacity(isPulsing ? 0.0 : 1.0)
            
            Circle().stroke(Color("Pink2"), lineWidth: 4)
                .frame(width: isPulsing ? 125 : 75, height: isPulsing ? 125 : 75)
                .opacity(isPulsing ? 0.0 : 1.0)
            
            Circle().stroke(Color("Purple1"), lineWidth: 4)
                .frame(width: isPulsing ? 100 : 75, height: isPulsing ? 100 : 75)
                .opacity(isPulsing ? 0.0 : 1.0)
            
            Image(instructorPhoto)
                .resizable()
                .frame(width: 75, height: 75)
                .aspectRatio(contentMode: .fill)
                .clipShape(Circle())
                .overlay(
                    Circle().stroke(Color.white, lineWidth: 4))
                .shadow(color: Color("Grey3Shadow"), radius: 4, x: 0, y: 3)
                .animation(nil)
            
        }
        .frame(width: 180, height: 180, alignment: .center)
        .onAppear() {
            withAnimation(Animation.default.repeatForever(autoreverses: false).speed(0.15)) {
                self.isPulsing.toggle()
            }
        }
    }
}
