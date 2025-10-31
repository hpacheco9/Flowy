//
//  Home.swift
//  BoilerPlate
//
//  Created by Henrique Pacheco on 31/10/2025.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var coordinator: Coordinator
    
    var body: some View {
        VStack{
            
        }
        .navigationTitle("Olá, Henrique!")
        .toolbar{
            ToolbarItem(placement: .navigationBarTrailing){
                Button(action:{
                    coordinator.present(fullScreenCover: .transaction(coordinator: coordinator))
                } ,label: {
                    
                    Image(systemName: "plus")
                        .resizable()
                        .scaledToFit()
                })
            }
        }
    }
}

#Preview {
    HomeView()
}
