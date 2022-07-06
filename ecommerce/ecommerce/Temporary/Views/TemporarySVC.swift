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
            HomePage2SVC()
                .environmentObject(cartManager)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(0)
            
            ContentView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Catalog")
                }
                .tag(1)
        } //TabView
    }
}

struct TemporarySVC_Previews: PreviewProvider {
    static var previews: some View {
        TemporarySVC()
    }
}
