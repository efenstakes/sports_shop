//
//  HomePageView.swift
//  mojtabas_sports_shop
//
//  Created by MAC on 11/4/21.
//

import SwiftUI



struct HomePageView: View {
    let categories: [ProductCategory] = [ .shoe, .tshirt, .ball, .game ]
    @State var selectedCategory: String = "tshirt"
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            
            
            // categories
            HStack{
                ForEach(categories, id: \.self ) { category in

                    CategoryPickerView(
                        category: category,
                        isSelected: selectedCategory == category.rawValue
                    )
                    .onTapGesture {
                        selectedCategory = category.rawValue
                    }

                }
            }
            .padding(.bottom)
            
            Text("Recently Popular")
                .font(.body)
                .fontWeight(.regular)
                .padding(.horizontal)
                .padding(.bottom, 8)
            
            Text("Top \(selectedCategory.capitalized)s")
                .font(.title)
                .fontWeight(.heavy)
                .padding(.horizontal)
            
            // if no products
            if products.filter{ $0.category.rawValue == selectedCategory }.isEmpty {
                
                VStack {
                    
                    Image(systemName: "bag.circle.fill")
                        .resizable()
                        .frame(width: 60, height: 60, alignment: .center)
                        .foregroundColor(.white)
                    
                    Text("No Products")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text("We could not find any products matching your search")
                        .font(.body)
                        .multilineTextAlignment(.center)
                    
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .frame(height: 360)
                .foregroundColor(.black)
                .background(
                    RoundedRectangle(cornerRadius: 20).fill(Color.pink.opacity(0.3))
                )
                .padding()
                .padding(.top, 40)
                .animation(.spring())
            }
            
            // products
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack {
                    
                    ForEach(
                        products.filter{
                          $0.category.rawValue == selectedCategory
                      }
                    ) { product in
                        
                        NavigationLink(
                            destination: ProductDetailsPageView(product: product)
                        ) {
                            ProductCardView(product: product)
                        }
                        
                    }
                    
                }
            }
            
            
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(
            leading:
                Image(systemName: "line.3.horizontal")
                .resizable()
                .frame(width: 24, height: 18, alignment: .center)
                .foregroundColor(.black),
            trailing:
                Image("person")
                .resizable()
                .frame(width: 32, height: 32, alignment: .center)
                .clipShape(Circle())
                .foregroundColor(.black)
        )
        
    }
}
