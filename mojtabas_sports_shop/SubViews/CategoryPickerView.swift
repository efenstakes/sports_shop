//
//  CategoryPickerView.swift
//  mojtabas_sports_shop
//
//  Created by MAC on 11/4/21.
//

import SwiftUI

struct CategoryPickerView: View {
    let category: ProductCategory
    let isSelected: Bool
    
    var body: some View {
        VStack(spacing: 10) {

            // icon
            Image(category.getImage())
                .resizable()
                .frame(width: 30, height: 30, alignment: .center)

            // dot to show when selected
            Circle().fill(Color.pink.opacity(0.7))
                .frame(width: 12, height: 12, alignment: .center)
                .scaleEffect(
                    isSelected ? 1 : 0
                )
                .animation(.spring())

        }
        .padding()
        .frame(height: 110)
        .background(
            isSelected ? Color.pink.opacity(0.2) : Color.white
        )
        .cornerRadius(80)
        .foregroundColor(.black)
        .padding()
        
    }
}
