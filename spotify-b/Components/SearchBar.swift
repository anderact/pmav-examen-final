//
//  SearchBar.swift
//  spotify-b
//
//  Created by Alumno on 17/06/23.
//

import SwiftUI

struct SearchBar: View {
    var body: some View {
        
        var text: String = "Find in your episodes"
        
        
        ZStack{
            Color("Grey")
            HStack(alignment: .center, spacing: 15) {
                ImageIconView(icon: "arrow.left", size: 16).padding()
                TextView(text: text, size: 14, weight: .bold)
                Spacer()
                TextView(text: "Sort",size: 14).padding()
            }
        }.frame(height: 48)
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar()
    }
}
