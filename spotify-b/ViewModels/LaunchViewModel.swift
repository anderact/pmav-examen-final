//
//  LaunchViewModel.swift
//  spotify-b
//
//  Created by Linder Anderson Hassinger Solano    on 3/06/23.
//

import Foundation
import FirebaseAuth

class LaunchViewModel: ObservableObject {
    
    var appState: AppState = .shared
    
    // Esto cuando se ejecuta?
    // Cuando se instancia a la clase
    init() {
        // cambiaremos el currentScreen de Launch a Main
        
        appState.currentScreen = Auth.auth().currentUser != nil ? .main : .signIn
        
        Task {
            await RequestAPI.getToken()
        }
    }
}
