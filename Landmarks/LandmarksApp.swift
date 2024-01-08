//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by lorenliang on 2024/1/4.
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
