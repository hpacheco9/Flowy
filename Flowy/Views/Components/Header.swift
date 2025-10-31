//
//  Header.swift
//  Flowy
//
//  Created by Henrique Pacheco on 31/10/2025.
//

import SwiftUI

struct Header: View {
    let title: String
    var body: some View {
        HStack {
            Text(title)
                .font(.title3)
                .fontWeight(.medium)
            Spacer()
        }
    }
}

#Preview {
    Header(title: "Header")
}
