//
//  ProductDetailsPageView.swift
//  mojtabas_sports_shop
//
//  Created by MAC on 11/4/21.
//

import SwiftUI

struct ProductDetailsPageView: View {
    let product: Product
    
    var body: some View {
        GeometryReader { geo in
            VStack(alignment: .leading) {
                
                
                // image
                Image(product.image)
                    .resizable()
                    .scaledToFill()
                    .frame(
                        width: geo.size.width,
                        height: (geo.size.height/2)+120,
                        alignment: .center
                    )
                    .ignoresSafeArea()
                
                VStack(alignment: .leading, spacing: 0) {
                    
                    // name
                    Text(product.name)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .padding(.top, 40)
                    
                    // price
                    HStack {
                        
                        Text("$")
                            .font(.title3)
                        
                        Text("\(product.price)")
                            .font(.title)
                            .bold()
                        
                    }
                    .padding(.vertical)
                    
                    
                    // sizes
                    HStack {
                        
                        // small
                        SizeView(size: "S")
                        
                        // medium
                        SizeView(size: "M")
                        
                        // large
                        SizeView(size: "L")
                        
                        // extra large
                        SizeView(size: "XL")
                        
                    }
                    .padding(.vertical)
                    
                    Spacer()
                    
                    // add to cart button
                    Button(action: {
                        
                    }) {
                        Text("Add To Cart")
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(
                                RoundedRectangle(cornerRadius: 12).fill(Color.pink)
                            )
                    }
                    .padding(.bottom, 40)
                    
                }
                .padding(.horizontal)
                .frame(
                    width: geo.size.width,
                    height: geo.size.height/2,
                    alignment: .topLeading
                )
                .background(Color.black.opacity(1))
                .foregroundColor(.white)
                .cornerRadius(20)
                .offset(y: -120)
                .ignoresSafeArea()
                
                
            }
            .ignoresSafeArea()
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(
                leading:
                    Image(systemName: "chevron.backward")
                        .resizable()
                        .frame(width: 12, height: 20, alignment: .center)
                        .foregroundColor(.white)
                        .padding()
                        .background(
                            Color.white.opacity(0.5)
                        )
                        .cornerRadius(16),
                trailing:
                    Image(systemName: "info")
                        .resizable()
                        .frame(width: 20, height: 20, alignment: .center)
                        .foregroundColor(.white)
            )
            
        }
    }
}


struct SizeView: View {
    let size: String
    
    var body: some View {
        Text(size)
            .padding()
            .background(
                RoundedRectangle(
                    cornerRadius: 8
                ).stroke(.white.opacity(0.4))
            )
            .shadow(color: .white.opacity(0.8), radius: 4, x: 0, y: 2)
            .padding(.trailing)
    }
}
