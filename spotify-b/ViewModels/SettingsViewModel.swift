//
//  SettingsViewModel.swift
//  spotify-b
//
//  Created by Alumno on 24/06/23.
//

import Foundation
class SettingsViewModel: ObservableObject {
    @Published var settingOptions: [SettingOption] = [
        SettingOption(title: "Data server", options: [
            Options(
                title: "Audio Quality",
                description: "Sets your audio quality to low (equivalent to 24kbit/s) and disables artist canvases.",
                haveToggle: true
            )
        ]),
        SettingOption(title: "Video Podcasts", options: [
            Options(
                title: "Download audio quality",
                description: "Save video podcasts as audio only.",
                haveToggle: true
            ),
            Options(
                title: "Stream audio online",
                description: "Play video podcasts as audio only when not on WiFi.",
                haveToggle: true
            )
        ])
    ]
}
