//
//  AlbumDetail.swift
//  spotify-b
//
//  Created by Alumno on 1/07/23.
//

import SwiftUI
import AVFoundation

struct AlbumDetail: View {
    var tracks: Tracks? = nil
    @State var player: AVPlayer?
    
    var body: some View {
            ZStack {
                Color("Dark")
                    .ignoresSafeArea()
                ScrollView(showsIndicators: false) {
                    VStack {
                        ForEach(tracks!.items, id: \.id) { track in
                            VStack(alignment: .leading) {
                                Button {
                                    if track.preview_url == nil {
                                        print("no hay url")
                                        return
                                    }
                                    guard let url = URL(string: track.preview_url!) else { return }
                                    let playerItem = AVPlayerItem(url: url)
                                    self.player = AVPlayer(playerItem: playerItem)
                                    self.player?.play()
                                } label: {
                                    TextView(text: track.name, size: 12)
                                }
                                
                            }
                            .padding(18)
                            .frame(maxWidth: .infinity)
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.gray.opacity(0.5), lineWidth: 2)
                            )
                            .shadow(radius: 1.3)
                        }
                    }
                }.padding()
            }
        }
}

struct AlbumDetail_Previews: PreviewProvider {
    static var previews: some View {
        AlbumDetail()
    }
}
