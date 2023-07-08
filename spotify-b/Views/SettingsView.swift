//
//  SettingsView.swift
//  spotify-b
//
//  Created by Linder Anderson Hassinger Solano    on 27/05/23.
//

import SwiftUI

struct SettingsView: View {
    
    @StateObject var settingsViewModel: SettingsViewModel = SettingsViewModel()
    @State var isToggle: Bool = false
    
    var body: some View {
        ZStack {
            Color("Dark")
                .ignoresSafeArea()
            VStack {
                HStack {
                    Image("avatar")
                        .resizable()
                        .frame(width: 64, height: 64)
                        .aspectRatio( contentMode: .fill)
                    VStack (alignment: .leading) {
                        TextView(text: "Axel Chacon", size: 24)
                        TextView(text: "View Profile", size: 12)
                    }
                    Spacer()
                    ImageIconView(icon: "chevron.right", size: 16)
                }
                ScrollView {
                    ForEach(settingsViewModel.settingOptions, id: \.self) {
                        option in
                        TextView(text: option.title, size: 16)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        ForEach(option.options, id: \.self) { item in
                            HStack {
                                VStack(alignment: .leading) {
                                    TextView(text: item.title, size: 16)
                                    TextView(text: item.description, size: 12)
                                }
                                if item.haveToggle {
                                    Toggle(isOn: $isToggle){
                                        
                                    }
                                }
                            }
                        }
                    }
                }
            }.padding()
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
