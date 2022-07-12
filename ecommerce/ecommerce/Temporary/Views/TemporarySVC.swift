//
//  TemporarySVC.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/2/22.
//

import SwiftUI

struct TemporarySVC: View {
    
    @StateObject var cartManager = CartManager()
    @StateObject var historyManager = HistoryManager()
    @StateObject var ordersManager = OrdersManager()
    @StateObject var commentsManager = CommentsManager()
    @State private var selection = 0
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor.systemGray6
    }
    
    var body: some View {
        NavigationView {
            TabView(selection: $selection) {
                HomePage2SVC()
                    .environmentObject(cartManager)
                    .environmentObject(historyManager)
                    .environmentObject(ordersManager)
                    .environmentObject(commentsManager)
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                    .tag(0)
                
                CatalogSVC()
                    .environmentObject(cartManager)
                    .environmentObject(historyManager)
                    .environmentObject(ordersManager)
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Catalog")
                    }
                    .tag(1)
                
                SearchHistorySVC()
                    .environmentObject(cartManager)
                    .environmentObject(historyManager)
                    .environmentObject(ordersManager)
                    .tabItem {
                        Image(systemName: "person")
                        Text("History")
                    }
                    .tag(2)
                
                OrderHistorySVC()
                    .environmentObject(cartManager)
                    .environmentObject(historyManager)
                    .environmentObject(ordersManager)
                    .tabItem {
                        Image(systemName: "list.bullet.rectangle.fill")
                        Text("Orders")
                    }
                    .tag(3)
                
            } //TabView
        }
        .navigationViewStyle(.stack)
    }
}

struct TemporarySVC_Previews: PreviewProvider {
    static var previews: some View {
        TemporarySVC()
    }
}
