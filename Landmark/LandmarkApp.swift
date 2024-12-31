//
//  LandmarkApp.swift
//  Landmark
//
//  Created by Tayyip Güzel on 30.12.2024.
//

import SwiftUI

@main
struct LandmarkApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
