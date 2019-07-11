//
//  ContentView.swift
//  TipToes
//
//  Created by Christopher Davis on 7/5/19.
//  Copyright © 2019 Curious Friends Club. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        
        // Page Content
        VStack {
            
            // Upper Section
            UpperContent()
                .padding(.horizontal, 32)
                .padding(.bottom)
            
            ClassesScrollViewSection()
            
            Spacer()
            
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone XS Max")
    }
}
#endif


// Components

// The whole uppser sections
struct UpperContent : View {
    var body: some View {
        return VStack {
            
            // Pull Down icon
            VStack {
                Image(systemName: "chevron.compact.down")
                    .frame(width: 100, height: 32)
                    .foregroundColor(.gray)
                    .imageScale(.large)
            }
            .frame(height: 40)
            
            
            // Header and Image
            HStack {
                VStack(alignment: .leading) {
                    Text("This Week")
                        .font(.title)
                        .color(Color("Grey4"))
                    Text("July 2 - 9")
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .color(Color("Purple1"))
                }
                Spacer()
                Image("ProfilePhoto-Meghan")
            }
            .padding(.bottom, -12)
            
            // Message from Meghan
            Group {
                Text("“Since it’s a holiday weekend, there will only be two classes instead of three. It’ll be a great week, friends!”")
                    .italic()
                    .color(Color("Grey3"))
                    .lineLimit(100)
                    .frame(minHeight: 75, maxHeight: .infinity)
            }
            .padding(.horizontal, 20)
                .padding(.vertical, 16)
                .border(Color("Grey1"), width: 2)
                .cornerRadius(12)
                .zIndex(-100.0)
            
            
            // The goods from this week
            HStack {
                
                // Number of classes
                HStack {
                    Image(systemName: "flame.fill")
                        .foregroundColor(Color("Grey3"))
                        .imageScale(.small)
                    Text("2 Classes")
                        .font(.caption)
                        .color(Color("Grey3"))
                }
                .padding(.trailing, 8)
                
                // Number of playlists
                HStack {
                    Image(systemName: "headphones")
                        .foregroundColor(Color("Grey3"))
                        .imageScale(.small)
                    Text("1 Playlist")
                        .font(.caption)
                        .color(Color("Grey3"))
                }
                .padding(.trailing, 8)
                
                // Number of quotes
                HStack {
                    Image(systemName: "bookmark.fill")
                        .foregroundColor(Color("Grey3"))
                        .imageScale(.small)
                    Text("1 Quote")
                        .font(.caption)
                        .color(Color("Grey3"))
                }
                Spacer()
            }
            
            Spacer()
        }
    }
}


// The section that holds all the classes for the week

struct ClassesScrollViewSection : View {
    var body: some View {
        return VStack {
            HStack {
                Text("Classes this week")
                    .font(.title)
                    .fontWeight(.regular)
                    .color(Color("Grey3"))
                Spacer()
            }
            .padding(.horizontal, 32)
                .padding(.bottom, 6)
            
            ClassCard()
        }
        .frame(minWidth: 0, maxWidth: .infinity)
            .padding(.vertical, 24)
            .padding(.bottom, 16)
            .background(Color("Grey1"))
    }
}
