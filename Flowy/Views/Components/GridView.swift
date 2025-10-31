//
//  GridView.swift
//  Flowy
//
//  Created by Henrique Pacheco on 31/10/2025.
//

import SwiftUI

struct GridView: View {
    
    let categories: [Category]
    @State private var selectedCategory: Category? = nil
    let columns = [
        GridItem(.flexible(), spacing: 16),
        GridItem(.flexible(), spacing: 16),
        GridItem(.flexible(), spacing: 16)
    ]
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: 16) {
            ForEach(categories) { category in
                CategoryCard(
                    category: category,
                    selected: category.id == selectedCategory?.id
                )
                .onTapGesture {
                    withAnimation{
                        selectedCategory = category
                    }
                }
                .frame(maxWidth: .infinity)
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    GridView(categories: Constants.categories)
}
