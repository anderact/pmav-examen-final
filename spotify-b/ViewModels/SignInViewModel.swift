//
//  SignInViewModel.swift
//  spotify-b
//
//  Created by Alumno on 10/06/23.
//

import Foundation
import FirebaseAuth

class SignInViewModel: ObservableObject {
    
    var appState: AppState = .shared
    
    func signIn(email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) {
            authResult, error in
            
            if error != nil {
                // TODO: Alerta que muestre el error
                return
            }
        }
    }
    
    func signUp(email: String, password: String){
        Auth.auth().createUser(withEmail: email, password: password) {
            authResult, error in
            
            if error != nil {
                // TODO: Alerta que muestre el error
                return
            }
            self.appState.currentScreen = .main
        }
    }
    
}
