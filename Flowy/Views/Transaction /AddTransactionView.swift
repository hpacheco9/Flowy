//
//  AddTransactionView.swift
//  Flowy
//
//  Created by Henrique Pacheco on 31/10/2025.
//

import SwiftUI

struct AddTransactionView: View {

    var coordinator: Coordinator
    @State private var amount: Double = 0
    @FocusState private var isFocused: Bool
    
    
    let categories: [Category] = [
        Category(icon: "house.fill", color: .blue, title: "Home"),
        Category(icon: "car.fill", color: .green, title: "Transportation"),
        Category(icon: "cart.fill", color: .yellow, title: "Groceries"),
        Category(icon: "heart.fill", color: .red, title: "Health"),
        Category(icon: "gift.fill", color: .purple, title: "Gifts"),
        Category(icon: "creditcard.fill", color: .orange, title: "Income")
    ]
    
    var body: some View {
        VStack{
            Header(title: "Amount".localized)
            .frame(maxWidth: .infinity)
            .padding(.horizontal,20)
            .padding(.top)
            
            HStack {
                Text("$")
                    .foregroundColor(.gray)
                    .padding(.leading)

                TextField(isFocused ? "" : "0.00", value: $amount, format: .number.precision(.fractionLength(2)))
                    .keyboardType(.decimalPad)
                    .focused($isFocused)
                    .onChange(of: isFocused) { oldValue, newValue in
                        if newValue {
                            amount = 0
                        }
                    }
            }
            .padding(.vertical, 16)
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Constants.appColor.opacity(0.7), lineWidth: 2)
            )
            .padding(.horizontal, 20)
            
            Header(title: "Categories".localized)
            .padding(.horizontal,20)
            .padding(.vertical, 20)
            
            GridView(categories: Constants.categories)
                .offset(y: -15)
        }
        .frame(maxHeight: .infinity, alignment: .top)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading){
                Button(action:{
                    coordinator.dismissFullScreenCover()
                } ,label: {
                    Image(systemName: "xmark")
                        .resizable()
                        .foregroundColor(.primary)
                        .scaledToFit()
                        .fontWeight(.semibold)
                        .frame(width: 17, height: 17)
                })
            }
            ToolbarItem(placement: .navigationBarTrailing){
                Button(action:{
                    
                } ,label: {
                    Image(systemName: "camera.fill")
                        .resizable()
                        .scaledToFit()
                        .tint(Constants.appColor)
                })
            }
        }
        .navigationTitle(Text(.newTansaction))
        .navigationBarTitleDisplayMode(.inline)
    }
}
    
#Preview {
    AddTransactionView(coordinator: Coordinator())
}
