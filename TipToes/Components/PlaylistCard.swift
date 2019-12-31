//
//  PlaylistCard.swift
//  TipToes
//
//  Created by Christopher Davis on 12/18/19.
//  Copyright © 2019 Curious Friends Club. All rights reserved.
//

import SwiftUI

struct PlaylistCard: View {
    var body: some View {
        Group {
            
            // Header Section
            VStack {
                VStack(alignment: .leading) {
                    HStack {
                        HStack {
                            Image(systemName: "music.note")
                            Text("music")
                                .font(.callout)
                                .fontWeight(.semibold)
                        }
                        .foregroundColor(Color.white)
                        .opacity(0.75)
                        
                        Spacer()
                        
                        Image("spotifyIcon")
                    }
                    .padding(.bottom, -16)
                    
                    Text("Playlists")
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                }
                
                // List of Playlists
                VStack {
                    
                    // Single playlist row
                    PlaylistItemRow(
                        playlistTitle: "Chill Vibes",
                        playlistLength: "42 minutes",
                        playlistDescription: "Music from Tycho, Sleeping Awake and more."
                    )
                    
                    Rectangle()
                        .frame(height: 1)
                        .padding(.vertical, 8)
                        .foregroundColor(.white)
                        .opacity(0.25)
                    
                    PlaylistItemRow(
                        playlistTitle: "Tunes 4 Flexin",
                        playlistLength: "1hr 4min",
                        playlistDescription: "Music from Avicii, Queen Bee, Troye Sivyan, and more. "
                    )
                }
            }
            
        }
        .padding(.horizontal)
        .padding(.vertical)
        .padding(.bottom, 8)
        .background(Color("Green1"))
        .frame(width: 352)
        .cornerRadius(12)
        .shadow(color: Color("GreenShadow"), radius: 4, x: 0, y: 2)
    }
}

struct PlaylistCard_Previews: PreviewProvider {
    static var previews: some View {
        PlaylistCard()
    }
}

struct PlaylistItemRow: View {
    
    var playlistTitle: String
    var playlistLength: String
    var playlistDescription: String
    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    HStack {
                        Text(playlistTitle)
                            .font(.subheadline)
                            .fontWeight(.bold)
                        Image(systemName: "circle.fill")
                            .font(.system(size: 4))
                        Text(playlistLength)
                            .font(.subheadline)
                            .opacity(0.75)
                    }
                    
                    Text(playlistDescription)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(.top, -4)
                    
                }
                .padding(.trailing, 4)
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .padding(.vertical, 24)
                    .padding(.horizontal, 10)
                    .background(Color("GreenMidDark"))
                    .cornerRadius(100)
            }
            .foregroundColor(Color.white)
        }
    }
}
