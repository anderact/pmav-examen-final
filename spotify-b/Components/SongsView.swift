//
//  SongsView.swift
//  spotify-b
//
//  Created by Alumno on 17/06/23.
//

import SwiftUI

struct SongsView: View {
    var img: String = ""
    var title: String = ""
    var subtitle: String = ""
    
    var body: some View {
        
        HStack (spacing: 15) {
            Image(img)
                .resizable()
                .frame(width: 54, height: 54)
            VStack(alignment: .leading) {
                TextView(text: title, size: 14)
                TextView(text: subtitle, color: Color("Grey2"), size: 12)
            }
        }
    }
}

struct SongsView_Previews: PreviewProvider {
    static var previews: some View {
        SongsView()
    }
}
