// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? JSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation

// MARK: - Welcome
public struct Episodes: Codable {
    let episodes: [Episode]
}

// MARK: - Episode
public struct Episode: Codable {
    let audio_preview_url: String
    let description: String
    let html_description: String
    let duration_ms: Int
    let explicit: Bool
    let external_urls: ExternalUrls
    let href: String
    let id: String
    let images: [ImageEpisode]
    let is_externally_hosted: Bool
    let is_playable: Bool
    let language: String
    let languages: [String]
    let name: String
    let release_date: String
    let release_date_precision: String
    let resume_point: ResumePoint
    let type: String
    let uri: String
//    let restrictions: Restrictions
    let show: Show
}

// MARK: - ExternalUrls
struct ExternalUrls: Codable {
    let spotify: String
}

// MARK: - Image
public struct ImageEpisode: Codable {
    let height: Int
    let url: String
    let width: Int
}

// MARK: - Restrictions
public struct Restrictions: Codable {
    let reason: String
}

// MARK: - ResumePoint
public struct ResumePoint: Codable {
    let fully_played: Bool
    let resume_position_ms: Int
}

// MARK: - Show
public struct Show: Codable {
    let available_markets: [String]
    let copyrights: [Copyright]
    let description: String
    let html_description: String
    let explicit: Bool
    let external_urls: ExternalUrls
    let href: String
    let id: String
    let images: [ImageEpisode]
    let is_externally_hosted: Bool
    let languages: [String]
    let media_type: String
    let name: String
    let publisher: String
    let type: String
    let uri: String
    let total_episodes: Int
}

// MARK: - Copyright
struct Copyright: Codable {
    let text, type: String
}
