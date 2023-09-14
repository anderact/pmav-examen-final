//
//  AppState.swift
//  spotify-b
//
// 
//  Created by Linder Anderson Hassinger Solano    on 3/06/23.
//

import Foundation

class AppState: ObservableObject {
    
    // Singleton pattern
    static let shared = AppState()
    
    // enum de screens
    enum AppScreens {
        case launch
        case signIn
        case main
    }
    
    // property wrappers
    @Published var currentScreen: AppScreens = .launch
}
