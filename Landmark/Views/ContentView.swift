//
//  ContentView.swift
//  Landmark
//
//  Created by Tayyip Güzel on 30.12.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}

// Control+Enter => Open right click
