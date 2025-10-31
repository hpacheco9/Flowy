//
//  Category.swift
//  Flowy
//
//  Created by Henrique Pacheco on 31/10/2025.
//

import Foundation
import SwiftUI


struct Category: Identifiable {
    let id = UUID()
    let icon: String
    let color: Color
    let title: String
}
