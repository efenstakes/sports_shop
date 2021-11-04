//
//  ContentView.swift
//  mojtabas_sports_shop
//
//  Created by MAC on 11/4/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            
            VStack(alignment: .leading, spacing: 0) {
                
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack {
                        
                        ForEach(products) { product in
                            ProductCardView(product: product)
                        }
                        
                    }
                }
                
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(
                leading:
                    Image(systemName: "line.3.horizontal")
                    .resizable()
                    .frame(width: 24, height: 18, alignment: .center),
                trailing:
                    Image("person")
                    .resizable()
                    .frame(width: 32, height: 32, alignment: .center)
                    .clipShape(Circle())
            )
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
