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
    
    var body: some View {
        TabView(selection: $selection) {
            
            ContentView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Catalog")
                }
                .tag(0)
            
            ShoppingCartSVC()
                .environmentObject(cartManager)
                .tabItem {
                    Image(systemName: "photo.fill")
                    Text("Cart")
                }
                .tag(1)
            
            CheckoutSVC()
                .tabItem {
                    Image(systemName: "envelope.fill")
                    Text("Checkout")
                }
                .tag(2)
            
            ProductSVC()
                .environmentObject(cartManager)
                .tabItem {
                    Image(systemName: "person.crop.circle.fill")
                    Text("Product")
                }
                .tag(3)
            
        } //TabView
    }
}

struct TemporarySVC_Previews: PreviewProvider {
    static var previews: some View {
        TemporarySVC()
    }
}
