//
//  ProfileHost.swift
//  Landmarks
//
//  Created by Mac on 6/29/24.
//  Copyright © 2024 Apple. All rights reserved.
//

import SwiftUI

struct ProfileHost: View {
    @State private var draftProfile = Profile.default
    @State private var isEditing = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                Text("Profile")
                    .font(.largeTitle)
                    .bold()
                Spacer()
                Button(action: {
                    isEditing.toggle()
                }) {
                    Image("editButton")
                }
            }
            if isEditing {
                ProfileEditor(profile: $draftProfile)
                Button(action: {
                    isEditing = false
                }) {
                    Text("Save")
                        .bold()
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding(.top)
                }
            } else {
                ProfileSummary(profile: draftProfile)
            }
        }
        .padding()
        .background(Color(UIColor.systemGray6))
        .cornerRadius(10)
        .padding()
    }
}

#Preview {
    ProfileHost()
}
