//
//  SettingOption.swift
//  spotify-b
//
//  Created by Alumno on 24/06/23.
//

import Foundation
struct SettingOption: Hashable {
    let title: String
    let options: [Options]
}

struct Options: Hashable {
    let title: String
    let description: String
    let haveToggle: Bool
}
