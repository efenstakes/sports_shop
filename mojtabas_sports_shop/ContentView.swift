//
//  ContentView.swift
//  mojtabas_sports_shop
//
//  Created by MAC on 11/4/21.
//

import SwiftUI

struct ContentView: View {
    
   init() {
       UITabBar.appearance().tintColor = UIColor.systemPink
   }
    
    var body: some View {
        
        NavigationView {
            
            TabView {
                
                HomePageView()
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                
                Text("Wish List")
                    .tabItem {
                        Label("Widh List", systemImage: "gift")
                    }
                
                Text("My Cart")
                    .tabItem {
                        Label("Cart", systemImage: "bag")
                    }
                
                Text("Profile")
                    .tabItem {
                        Label("Widh List", systemImage: "person")
                    }
                
                
            }
            .accentColor(Color.pink)
            
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
