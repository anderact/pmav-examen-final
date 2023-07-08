//
//  EpisodeDetail.swift
//  spotify-b
//
//  Created by Alumno on 8/07/23.
//

import SwiftUI

struct EpisodeDetail: View {
    var episodios: Episode? = nil
    var body: some View {
        ZStack {
                    LinearGradient(colors:[.gray, .black],
                                   startPoint: .top,
                                   endPoint: .center)
                    .ignoresSafeArea()
                        .ignoresSafeArea()
                    ScrollView {
                        VStack(spacing: 30) {
                            
                            VStack(alignment: .leading, spacing: 20){
                                RowItemView(
                                    image: episodios!.images.first!.url,
                                    width: 54,
                                    height : 54
                                ).cornerRadius(4)
                                TextView(
                                    text: episodios!.name,
                                    size: 32
                                )
                                TextView(
                                    text: "Maha Bharat with Dhruv Rathee",
                                    size: 14
                                )
                                TextView(
                                    text: episodios!.release_date + " • " + String((episodios!.duration_ms)/60000) + " MINS",
                                    color: .gray,
                                    size: 10
                                )
                                HStack(alignment: .center, spacing: 20) {
                                    Button{
                                        
                                    } label: {
                                        Text("Play")
                                            .foregroundColor(Color("Dark"))
                                            .padding()
                                            .frame(maxWidth: 116)
                                            .background(Color("Primary"))
                                            .font(.system(size: 14,weight: .semibold))
                                            .cornerRadius(30)
                                    }
                                    Spacer()
                                    HStack(spacing: 25){
                                        ImageIconView(icon: "square.and.arrow.up", size: 19.25)
                                        ImageIconView(icon: "plus.circle", size: 19.25)
                                        ImageIconView(icon: "arrow.down.circle", size: 19.25)
                                    }
                                }
                                VStack(alignment: .leading, spacing: 20){
                                    TextView(
                                        text: episodios!.description,
                                        color: .gray,
                                        size: 14
                                    )
                                    TextView(
                                        text: "Learn more about your ad choices. Visit",
                                        color: .gray,
                                        size: 14
                                    )
                                    TextView(
                                        text: "podcastchoices.com/adchoices",
                                        size: 14
                                        )
                                    TextView(
                                        text: episodios!.release_date + " • " + String((episodios!.duration_ms)/60000) + " MINS",
                                        color: .gray,
                                        size: 10
                                    )
                                }
                            }
                            HStack(spacing: 15){
                                TextView(
                                    text: "Episode transcript",
                                    size: 14
                                )
                                Spacer()
                                ImageIconView(
                                    icon: "chevron.right"
                                    )
                            }
                        }
                    }.padding()
                }
    }
}

struct EpisodeDetail_Previews: PreviewProvider {
    static var previews: some View {
        EpisodeDetail()
    }
}
