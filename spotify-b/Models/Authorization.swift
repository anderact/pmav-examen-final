//
//  Authorization.swift
//  spotify-b
//
//  Created by Alumno on 1/07/23.
//

import Foundation

struct Authorization: Codable {
    let access_token: String
    let token_type: String
    let expires_in: Int
}
