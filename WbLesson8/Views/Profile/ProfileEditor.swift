//
//  ProfileEditor.swift
//  WbLesson8
//
//  Created by Сергей Дятлов on 11.07.2024.
//

import SwiftUI

struct ProfileEditor: View {
    @Binding var profile: Profile
    
    var body: some View {
        List {
            HStack {
                Text("Username")
                Divider()
                TextField("Username", text: $profile.username)
            }
            Toggle(isOn: $profile.prefersNotifications) {
                Text("Enable Notifications")
            }
            Picker("Seasonal Photo", selection: $profile.seasonalPhoto) {
                ForEach(Profile.Season.allCases) { season in
                    Text(season.rawValue).tag(season)
                }
            }
            DatePicker("Goal Date", selection: $profile.goalDate, displayedComponents: .date)
        }
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
