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
        VStack(spacing: 8) {

            // icon
            Image(category.getImage())
                .resizable()
                .frame(width: 30, height: 30, alignment: .center)

            // dot to show when selected
            Circle().fill(Color.pink)
                .frame(width: 16, height: 16, alignment: .center)
                .scaleEffect(
                    isSelected ? 1 : 0
                )
                .animation(.spring())

        }
        .padding()
        .frame(maxHeight: 110)
        .background(
            isSelected ? Color.pink.opacity(0.3) : Color.white
        )
        .cornerRadius(80)
        .foregroundColor(.black)
        .padding()
        
    }
}
