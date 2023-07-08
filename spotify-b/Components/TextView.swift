//
//  TextView.swift
//  spotify-b
//
//  Created by Linder Anderson Hassinger Solano    on 27/05/23.
//

import SwiftUI

struct TextView: View {
    
    var text: String = ""
    var color: Color = .white
    var size: CGFloat = 24
    var weight: Font.Weight = .bold
    var width: CGFloat = .infinity
    
    var body: some View {
        Text(text)
            .foregroundColor(color)
            .font(.system(size: size, weight: weight))
            .frame(width: width)
            .lineLimit(3)
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView(text: "Prueba", color: .orange)
    }
}
