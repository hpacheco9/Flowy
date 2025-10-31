//
//  Constants.swift
//  Flowy
//
//  Created by Henrique Pacheco on 31/10/2025.
//

import SwiftUI

struct Constants {
    static let appColor = Color.green
    static let categories: [Category] = [
        Category(icon: "house.fill", color: .blue, title: "Home".localized),
        Category(icon: "car.fill", color: .green, title: "Transportation"),
        Category(icon: "cart.fill", color: .yellow, title: "Groceries"),
        Category(icon: "heart.fill", color: .red, title: "Health"),
        Category(icon: "gift.fill", color: .purple, title: "Gifts"),
        Category(icon: "creditcard.fill", color: .orange, title: "Income")
    ]
}
