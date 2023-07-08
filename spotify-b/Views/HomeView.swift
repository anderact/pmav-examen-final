//
//  HomeView.swift
//  spotify-b
//
//  Created by Linder Anderson Hassinger Solano    on 27/05/23.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var homeViewModel: HomeViewModel = HomeViewModel()
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color("Dark")
                    .ignoresSafeArea()
                ScrollView {
                    VStack(alignment: .leading, spacing: 30) {
                        HStack(spacing: 15) {
                            TextView(text: "Good morning")
                            Spacer()
                            ImageIconView(icon: "bell")
                            ImageIconView(icon: "clock")
                            ImageIconView(icon: "gear")
                        }
                        TextView(text: "Recently played")
                        ScrollView(.horizontal, showsIndicators: false) {
                            if homeViewModel.albums?.albums != nil {
                                HStack(spacing: 20) {
                                    ForEach(homeViewModel.albums!.albums, id: \.id){
                                        album in
                                        NavigationLink(destination: AlbumDetail(tracks: album.tracks)) {
                                            RowItemView(
                                                image: album.images[0].url,
                                                text: album.name
                                            )
                                        }
                                    }
                                }
                            }
                        }
                        TextView(text: "Several Episodes")
                        ScrollView(.horizontal, showsIndicators: false) {
                            if homeViewModel.episodes?.episodes != nil {
                                HStack(spacing: 20) {
                                    ForEach(homeViewModel.episodes!.episodes, id: \.id){
                                        episode in
                                        NavigationLink(destination: EpisodeDetail(episodios: episode.self)){
                                            RowItemView(
                                                image: episode.images[0].url,
                                                text: episode.name
                                            )
                                        }
                                    }
                                }
                            }
                        }
                        TextView(text: "To get you started")
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 20) {
                                RowItemView(
                                    image: "daily1",
                                    width: 144,
                                    height: 144,
                                    text: "Drake, Michael Jackson, Dua Lipa and more"
                                )
                                RowItemView(
                                    image: "daily2",
                                    width: 144,
                                    height: 144,
                                    text: "Justin Bieber, Michael Jackson, Dua Lipa and more"
                                )
                                RowItemView(
                                    image: "daily1",
                                    width: 144,
                                    height: 144,
                                    text: "Justin Bieber, Michael Jackson, Dua Lipa and more"
                                )
                            }
                        }
                    }
                }.padding()
            }.onAppear {
                Task {
                    homeViewModel.albums = await RequestAPI.getAlbums()
                    homeViewModel.episodes = await RequestAPI.getSeveralEpisodes()
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
