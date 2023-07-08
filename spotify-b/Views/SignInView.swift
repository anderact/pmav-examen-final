//
//  SignInView.swift
//  spotify-b
//
//  Created by Linder Anderson Hassinger Solano    on 3/06/23.
//

import SwiftUI

struct SignInView: View {
    
    @State var email: String = ""
    @State var password: String = ""
    
    @StateObject var signViewModel: SignInViewModel = SignInViewModel()
    
    var body: some View {
        ZStack {
            Color("Dark")
                .ignoresSafeArea()
            VStack {
                Image("logo-white")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding(.bottom, 5)
                TextView(text: "Millions of songs")
                TextView(text: "Free on Spotify")
                
                VStack(spacing: 20) {
                    TextFieldView(value: $email, placeHolder: "Email", keyBoardType: .emailAddress)
                    TextFieldView(value: $password, placeHolder: "Password", isSecure: true)
                    
                    Button {
                        signViewModel.signUp(email: email, password: password)
                    } label: {
                        Text("Log in")
                            .foregroundColor(Color("Dark"))
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color("Primary"))
                            .cornerRadius(22)
                    } 
                }.padding(.top)
            }.padding()
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
