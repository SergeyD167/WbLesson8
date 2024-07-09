//
//  WbLesson8App.swift
//  WbLesson8
//
//  Created by Сергей Дятлов on 09.07.2024.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
