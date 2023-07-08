//
//  SearchItemsView.swift
//  spotify-b
//
//  Created by Alumno on 17/06/23.
//

import SwiftUI

struct ExamenView: View {
    var body: some View {
        ZStack {
            Color("Dark")
                .ignoresSafeArea()
            ScrollView {
                VStack(alignment: .leading, spacing: 30) {
                    SearchBar()
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 15) {
                            Button {
                            } label: {
                                Text("")
                                    .padding()
                                    .font(.system(size: 12))
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 30)
                                            .stroke(Color("Primary"), lineWidth: 4)
                                    )
                            }
                            .background(Color("Secondary"))
                            .cornerRadius(30)
                            
                            Button {
                            } label: {
                                Text("Artists")
                                    .padding()
                                    .font(.system(size: 12))
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 30)
                                            .stroke(Color("Grey"), lineWidth: 4)
                                    )
                            }
                            .background(Color("Dark"))
                            .cornerRadius(30)
                            
                            Button {
                            } label: {
                                Text("Playlists")
                                    .padding()
                                    .font(.system(size: 12))
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 30)
                                            .stroke(Color("Grey"), lineWidth: 4)
                                    )
                            }
                            .background(Color("Dark"))
                            .cornerRadius(30)
                            
                            Button {
                            } label: {
                                Text("Songs")
                                    .padding()
                                    .font(.system(size: 12))
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 30)
                                            .stroke(Color("Grey"), lineWidth: 4)
                                    )
                            }
                            .background(Color("Dark"))
                            .cornerRadius(30)
                            
                            Button {
                            } label: {
                                Text("Albums")
                                    .padding()
                                    .font(.system(size: 12))
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 30)
                                            .stroke(Color("Grey"), lineWidth: 4)
                                    )
                            }
                            .background(Color("Dark"))
                            .cornerRadius(30)
                        }.padding(.leading)
                    }
                    
                    
                        }
                        .padding(.bottom)
                        
                        SongsView(img: "IMG1", title: "Justin Bieber: Best Of The Best", subtitle: "Playlist")
                        SongsView(img: "IMG2", title: "Baby", subtitle: "Song • Justin Bieber, Ludacris")
                        SongsView(img: "IMG3", title: "Ed Sheeran", subtitle: "Artist")
                    }.padding()
                }
            }
        }
    


struct ExamenView_Previews: PreviewProvider {
    static var previews: some View {
        SearchItemsView()
    }
}
