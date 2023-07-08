//
//  RequestAPI.swift
//  spotify-b
//
//  Created by Alumno on 1/07/23.
//

import Foundation

class RequestAPI {
    
    static let endpoint: String = "https://spotify-api-anderact.vercel.app/api/spotify"
    
    static func getToken() async{
        guard let url = URL(string: endpoint) else { return }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            
            if let authorization = try? JSONDecoder().decode(Authorization.self, from: data) {
                let user = UserDefaults.standard
                user.set(authorization.access_token, forKey: "access_token")
            }
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    static let endpointAlbums: String = "https://api.spotify.com/v1/albums?ids=382ObEPsp2rxGrnsizN5TX%2C1A2GTWGtFfWp7KSQTwWOyo%2C2noRn2Aes5aoNVsU6iWThc"
    
    static func getAlbums() async -> Albums? {
        guard let url = URL(string: endpointAlbums) else {return nil}
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.setValue("Bearer " + (UserDefaults.standard.string(forKey: "access_token") ?? ""), forHTTPHeaderField: "Authorization")
        do {
            let (data, _) = try await URLSession.shared.data(for: request)
            if let albums = try? JSONDecoder().decode(Albums.self, from: data) {
                return albums
            }
        } catch let error {
            print("Error")
            print(error.localizedDescription)
        }
        return nil
    }
    
    static let endpointEpisodes: String = "https://spotify-api-omega.vercel.app/api/episodes"
    
    static func getSeveralEpisodes() async -> Episodes? {
        guard let url = URL(string: endpointEpisodes) else {return nil}
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.setValue("Bearer " + (UserDefaults.standard.string(forKey: "access_token") ?? ""), forHTTPHeaderField: "Authorization")
    
        do {
            let (data, _) = try await URLSession.shared.data(for: request)
            
            if let data = String(data: data, encoding: .utf8) {
                print("json", data)
            }
            
            if let serveralEpisodes = try? JSONDecoder().decode(Episodes.self, from: data) {
                print("serveralEpisodes", serveralEpisodes)
                return serveralEpisodes
            } else {
                print("Error en el modelo")
            }
        } catch let error {
            print("Error")
            print(error.localizedDescription)
        }
        return nil
    }
}
