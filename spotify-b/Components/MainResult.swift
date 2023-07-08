//
//  MainResult.swift
//  spotify-b
//
//  Created by Alumno on 17/06/23.
//

import SwiftUI

struct MainResult: View {
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            Image("mainresult")
                .resizable()
                .frame(width: 54, height: 54)
            VStack(alignment: .leading) {
                TextView(text: "Justin Bieber", size: 14)
                TextView(text: "Artist", color: Color("Grey2"), size: 12)
            }
        }.padding(16)
    }
}

struct MainResult_Previews: PreviewProvider {
    static var previews: some View {
        MainResult()
    }
}
