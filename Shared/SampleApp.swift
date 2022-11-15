//
//  SampleApp.swift
//  Shared
//
//

import SwiftUI

@main
struct SampleApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
