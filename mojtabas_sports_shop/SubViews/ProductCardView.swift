//
//  ProductCardView.swift
//  mojtabas_sports_shop
//
//  Created by MAC on 11/4/21.
//

import SwiftUI

struct ProductCardView: View {
    let product: Product
    
    var body: some View {
        
        ZStack {
            
            Image(product.image)
                .resizable()
                .scaledToFill()
            
            
            // content
            VStack(alignment: .leading) {
                Spacer()
                
                Text(product.name)
                    .font(.title3)
                    .fontWeight(.heavy)
                
                HStack(alignment: .bottom) {
                    
                    HStack {
                        Text("$")
                            .font(.body)
                            .fontWeight(.light)
                        
                        Text("\(product.price)")
                            .font(.title)
                            .bold()
                    }
                    
                    Spacer()
                    
                    Image(systemName: "bag")
                        .resizable()
                        .frame(width: 24, height: 30, alignment: .center)
                }
            }
            .padding()
            .frame(width: 260, alignment: .leading)
            .foregroundColor(.white)
            
        }
        .clipped()
        .frame(width: 260, height: 400, alignment: .center)
        .cornerRadius(20)
        .padding()
        
    }
}
