//
//  TemporarySVC.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/2/22.
//

import SwiftUI

struct MainTabControllerSVC: View {
    
    @StateObject var cartManager = CartManager()
    @StateObject var historyManager = HistoryManager()
    @StateObject var ordersManager = OrdersManager()
    @StateObject var commentsManager = CommentsManager()
    @StateObject var wishlistManager = WishlistManager()
    
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
                    .environmentObject(wishlistManager)
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                    .tag(0)
                
                CatalogSVC()
                    .environmentObject(cartManager)
                    .environmentObject(historyManager)
                    .environmentObject(ordersManager)
                    .environmentObject(commentsManager)
                    .environmentObject(wishlistManager)
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
                
                WishListPageSVC()
                    .environmentObject(cartManager)
                    .environmentObject(historyManager)
                    .environmentObject(ordersManager)
                    .environmentObject(commentsManager)
                    .environmentObject(wishlistManager)
                    .tabItem {
                        Image(systemName: "star.fill")
                        Text("Wish List")
                    }
                    .tag(4)
                
            } //TabView
        }
        .navigationViewStyle(.stack)
    }
}


