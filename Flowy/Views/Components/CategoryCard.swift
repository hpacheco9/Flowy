//
//  CategoryButton.swift
//  Flowy
//
//  Created by Henrique Pacheco on 31/10/2025.
//

import SwiftUI

struct CategoryCard: View {
    let category: Category
    var selected: Bool

    var body: some View {
        VStack(spacing: 8) {
            ZStack {
                Circle()
                    .fill(category.color.opacity(0.3))
                    .frame(width: 45, height: 45)

                Image(systemName: category.icon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25, height: 25)
                    .foregroundColor(category.color)
            }
            Text(category.title)
                .foregroundColor(.primary)
                .multilineTextAlignment(.center)
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(Color(.systemBackground))
                .frame(width: 110, height: 110)
                .shadow(color: .black.opacity(0.1), radius: 8, x: 0, y: 4)
        )
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(category.color, lineWidth: selected ? 2 : 0)
                .frame(width: 110, height: 110)
        )
    }
}



#Preview("test", traits: .sizeThatFitsLayout){
    CategoryCard(category: Category.init(icon: "house.fill", color: .blue, title: "House"), selected: true)
        .padding()
}
    
