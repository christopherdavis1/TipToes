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
        
        // Top Wrapper
        ScrollView(.vertical, showsIndicators: false) { 
            
            // Header Content
            VStack {
                VStack {
                    
                    // Header + Avatar
                    HStack {
                        VStack(alignment: .leading) {
                            Text("This Week")
                                .font(.largeTitle)
                                .foregroundColor(Color("Grey4"))
                            Text("December 18 - 22")
                                .foregroundColor(Color("Purple1"))
                                .fontWeight(.semibold)
                        }
                        .padding(.top)
                        .padding(.horizontal, 24)
                        
                        Spacer()
                        
                        InstructorAvatar()
                            
                            
                    }
                    .padding(.bottom, -50)
                    
                    // Weekly Detail
                    WeekDetail()
                }
                
                // END HEADER
                
                
                // Weekly Classes
                VStack(alignment: .leading) {
                    Text("2 classes for the week")
                        .padding(.leading, 24)
                        .font(.system(size: 22))
                        .foregroundColor(Color("Pink3"))
                    HorizontalClassScroll()
                }
                .padding(.vertical, 24)
                .background(Color("LightPink1"))
                //END CLASSES
                
                // START Week Content
                VStack {
                    PlaylistCard()
                    QuoteCard()
                }
                .padding(.vertical, 16)
            }
        }
        .edgesIgnoringSafeArea(.all)
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
