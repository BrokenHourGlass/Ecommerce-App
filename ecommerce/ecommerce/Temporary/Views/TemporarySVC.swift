//
//  TemporarySVC.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/2/22.
//

import SwiftUI

struct TemporarySVC: View {
    
    @StateObject var cartManager = CartManager()
    @State private var selection = 0
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor.systemGray6
    }
    
    var body: some View {
        NavigationView {
            TabView(selection: $selection) {
                HomePage2SVC()
                    .environmentObject(cartManager)
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                    .tag(0)
                
                CatalogSVC()
                    .environmentObject(cartManager)
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Catalog")
                    }
                    .tag(1)
                
                CategorySVC()
                    .environmentObject(cartManager)
                    .tabItem {
                        Image(systemName: "person")
                        Text("Category")
                    }
                    .tag(2)
            } //TabView
        }
    }
}

struct TemporarySVC_Previews: PreviewProvider {
    static var previews: some View {
        TemporarySVC()
    }
}
