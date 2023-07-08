//
//  ImageIconView.swift
//  spotify-b
//
//  Created by Linder Anderson Hassinger Solano    on 27/05/23.
//

import SwiftUI

struct ImageIconView: View {
    var icon: String = ""
    var color: Color = .white
    var size: CGFloat = 22
    var weight: Font.Weight = .bold
    
    var body: some View {
        Image(systemName: icon)
            .foregroundColor(color)
            .font(.system(size: size, weight: weight))
    }
}

struct ImageIcon_Previews: PreviewProvider {
    static var previews: some View {
        ImageIconView()
    }
}
