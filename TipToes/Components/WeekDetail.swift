//
//  WeekDetail.swift
//  TipToes
//
//  Created by Christopher Davis on 12/17/19.
//  Copyright © 2019 Curious Friends Club. All rights reserved.
//

import SwiftUI

struct WeekDetail: View {
    var body: some View {
        Group {
            WeekDetailView(instructorMessage: "“Since it’s a holiday weekend, there will only be two classes instead of three. It’ll be a great week, friends!”", numberOfClasses: "2", numberOfQuotes: "1", numberOfPlaylists: "1")
        }
    }
}


// Preview Code
struct WeekDetail_Previews: PreviewProvider {
    static var previews: some View {
        WeekDetail()
    }
}



// Weekly message struct
struct WeekDetailView: View {
    
    var instructorMessage: String
    var numberOfClasses: String
    var numberOfQuotes: String
    var numberOfPlaylists: String
    
    var body: some View {
        VStack(alignment: .leading) {
            VStack {
                Text(instructorMessage)
                    .italic()
                    .fixedSize(horizontal: false, vertical: true)
                    .foregroundColor(Color("Grey3"))
                    .padding(.top, 16)
                    .padding()
                    .background(Color("Grey1"))
                    .cornerRadius(8)
                    .multilineTextAlignment(.center)
                
                HStack(spacing: 20.0) {
                    HStack {
                        Image(systemName: "bolt.circle.fill")
                            .font(.system(size: 14))
                            .padding(.horizontal, -2)
                        Text("\(numberOfClasses) Classes")
                            .fontWeight(.semibold)
                    }
                    HStack {
                        Image(systemName: "quote.bubble.fill")
                            .font(.system(size: 14))
                            .padding(.horizontal, -2)
                            .padding(.top, 2)
                        Text("\(numberOfQuotes) Quote")
                            .fontWeight(.semibold)
                    }
                    HStack {
                        Image(systemName: "headphones")
                            .font(.system(size: 14))
                            .padding(.horizontal, -2)
                        Text("\(numberOfPlaylists) Playlist")
                            .fontWeight(.semibold)
                    }
                }
                .padding(.leading, 8)
                .foregroundColor(Color("Grey2"))
                .font(.footnote)
            }
            .padding()
        }
    }
}
