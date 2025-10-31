//
//  Coordinator.swift
//  BoilerPlate
//
//  Created by Henrique Pacheco on 31/10/2025.
//

import SwiftUI
import SwiftData
import Combine

enum Page: String, Identifiable {
    case home, settings

    var id : String {
        self.rawValue
    }
}

enum Sheet: String, Identifiable {
    
    case home, settings

    var id : String {
        self.rawValue
    }
}

enum FullScreenCover: String, Identifiable {
    
    case home, settings
    
    var id : String {
        self.rawValue
    }
}


class Coordinator: ObservableObject {
    
    @Published var path = NavigationPath()
    @Published var sheet: Sheet?
    @Published var fullScreenCover: FullScreenCover?
    
    func push(page: Page) {
        path.append(page)
    }
    
    func present(sheet: Sheet) {
        self.sheet = sheet
    }
    
    func present(fullScreenCover: FullScreenCover) {
        self.fullScreenCover = fullScreenCover
    }
    
    func dismissSheet() {
        self.sheet = nil
    }
    
    func dismissFullScreenCover() {
        self.fullScreenCover = nil
    }
    
    func pop() {
        path.removeLast()
    }
    
    func popToRoot() {
        path.removeLast(path.count)
    }
    
    @ViewBuilder
    func build(page: Page) -> some View {
        switch page {
        case .home:
            HomeView()
        case .settings:
            SettingsView()
        }
    }
    
    @ViewBuilder
    func build(sheet: Sheet) -> some View {
        switch sheet {
        case .home:
            NavigationStack {
                HomeView()
            }
            
        case .settings:
            NavigationStack {
                SettingsView()
            }
        }
    }
    
    @ViewBuilder
    func build(fullScreenCover: FullScreenCover) -> some View {
        switch fullScreenCover {
        case .home:
            NavigationStack {
                HomeView()
            }
            
        case .settings:
            NavigationStack {
                SettingsView()
            }
        }
    }
}
