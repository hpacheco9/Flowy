//
//  ContentView.swift
//  BoilerPlate
//
//  Created by Henrique Pacheco on 31/10/2025.
//

import SwiftUI
import SwiftData

struct ContentView: View {

    var body: some View {
        TabView {
            HomeCoordinatorView()
                .environmentObject(Coordinator())
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            SettingsCoordinatorView()
                .environmentObject(Coordinator())
                .tabItem {
                    Label("Settings", systemImage: "gearshape")
            }
        }
        .tint(.green)
    }
}

#Preview {
    ContentView()
        
}
