//
//  HomeViewModel.swift
//  spotify-b
//
//  Created by Alumno on 1/07/23.
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published var albums: Albums? = nil
    @Published var episodes: Episodes? = nil
}
