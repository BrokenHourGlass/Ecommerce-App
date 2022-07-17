//
//  CategorySVC.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/3/22.
//

import SwiftUI

struct CategorySVC: View {
    @EnvironmentObject var cartManager: CartManager
    @EnvironmentObject var historyManager: HistoryManager
    @EnvironmentObject var ordersManager: OrdersManager
    @EnvironmentObject var commentsManager: CommentsManager
    @EnvironmentObject var wishlistManager: WishlistManager
    
    let columns: [GridItem] = [GridItem(.flexible())]
    var category: String
    let loggedIn = userDefaults.bool(forKey: "isLoggedIn")
    
    var body: some View {
        VStack {
            NavigationBar()
                .environmentObject(cartManager)
                .environmentObject(ordersManager)
            NavigationBack()
            ScrollView {
                if (loggedIn) {
                    SignupModal()
                }
                VStack(spacing: 20) {
                    CategoryHero()
                    CategoryFeatured(filteredProducts: CategoryViewModel.filterByCategory(targetCategory: category))
                        .environmentObject(cartManager)
                        .environmentObject(historyManager)
                        .environmentObject(ordersManager)
                        .environmentObject(commentsManager)
                        .environmentObject(wishlistManager)
                    CategoryResults(filteredProducts: CategoryViewModel.filterByCategory(targetCategory: category))
                        .environmentObject(cartManager)
                        .environmentObject(historyManager)
                        .environmentObject(ordersManager)
                        .environmentObject(commentsManager)
                        .environmentObject(wishlistManager)
                }
            }
        }
        .navigationTitle("")
        .navigationBarHidden(true)
    }
}

