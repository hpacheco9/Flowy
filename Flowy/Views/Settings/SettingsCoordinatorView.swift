//
//  SettingsCoordinatorView.swift
//  BoilerPlate
//
//  Created by Henrique Pacheco on 31/10/2025.
//

import SwiftUI

struct SettingsCoordinatorView: View {
    @EnvironmentObject private var coordinator : Coordinator
    
    var body: some View {
        NavigationStack(path: $coordinator.path){
            coordinator.build(page: .settings)
                .navigationDestination(for: Page.self){ page in
                    coordinator.build(page: page)
                }
                .sheet(item: $coordinator.sheet) { sheet in
                    coordinator.build(sheet: sheet)
                }
        }
    }
}

#Preview {
    SettingsCoordinatorView()
        .environmentObject(Coordinator())
}
