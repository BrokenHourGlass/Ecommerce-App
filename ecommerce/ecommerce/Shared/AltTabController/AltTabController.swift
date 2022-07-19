//
//  AltTabController.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/19/22.
//

import SwiftUI

struct AltTabController: View {
    @EnvironmentObject var cartManager: CartManager
    @EnvironmentObject var historyManager: HistoryManager
    @EnvironmentObject var ordersManager: OrdersManager
    @EnvironmentObject var commentsManager: CommentsManager
    @EnvironmentObject var wishlistManager: WishlistManager
    @EnvironmentObject var services: Services
    
    @State var showHome = false
    @State var showCatalog = false
    @State var showHistory = false
    @State var showOrders = false
    @State var showWishlist = false
    @State var selector = 0
    
    var body: some View {
        Section {
            NavigationLink(destination:
                            HomePage2SVC()
                .environmentObject(cartManager)
                .environmentObject(historyManager)
                .environmentObject(ordersManager)
                .environmentObject(commentsManager)
                .environmentObject(wishlistManager)
                .environmentObject(services), isActive: $showHome) {
                    EmptyView()
                }
            NavigationLink(destination:
                            CatalogSVC()
                .environmentObject(cartManager)
                .environmentObject(historyManager)
                .environmentObject(ordersManager)
                .environmentObject(commentsManager)
                .environmentObject(wishlistManager)
                .environmentObject(services), isActive: $showCatalog) {
                    EmptyView()
                }
            NavigationLink(destination:
                            SearchHistorySVC()
                .environmentObject(cartManager)
                .environmentObject(historyManager)
                .environmentObject(ordersManager)
                .environmentObject(commentsManager)
                .environmentObject(wishlistManager)
                .environmentObject(services), isActive: $showHistory) {
                    EmptyView()
                }
            NavigationLink(destination:
                            OrderHistorySVC()
                .environmentObject(cartManager)
                .environmentObject(historyManager)
                .environmentObject(ordersManager)
                .environmentObject(commentsManager)
                .environmentObject(wishlistManager)
                .environmentObject(services), isActive: $showOrders) {
                    EmptyView()
                }
            NavigationLink(destination:
                            WishListPageSVC()
                .environmentObject(cartManager)
                .environmentObject(historyManager)
                .environmentObject(ordersManager)
                .environmentObject(commentsManager)
                .environmentObject(wishlistManager)
                .environmentObject(services), isActive: $showWishlist) {
                    EmptyView()
                }
            
            HStack {
                AltTabControllerTab(showHome: $showHome, showCatalog: $showCatalog, showHistory: $showHistory, showOrders: $showOrders, showWishlist: $showWishlist, selector: $selector, systemIMG: "house.fill", tabName: "Home", tabNum: 0)
                Spacer()
                AltTabControllerTab(showHome: $showHome, showCatalog: $showCatalog, showHistory: $showHistory, showOrders: $showOrders, showWishlist: $showWishlist, selector: $selector, systemIMG: "magnifyingglass", tabName: "Catalog", tabNum: 1)
                Spacer()
                AltTabControllerTab(showHome: $showHome, showCatalog: $showCatalog, showHistory: $showHistory, showOrders: $showOrders, showWishlist: $showWishlist, selector: $selector, systemIMG: "person.fill", tabName: "History", tabNum: 2)
                Spacer()
                AltTabControllerTab(showHome: $showHome, showCatalog: $showCatalog, showHistory: $showHistory, showOrders: $showOrders, showWishlist: $showWishlist, selector: $selector, systemIMG: "list.bullet.rectangle.fill", tabName: "Orders", tabNum: 3)
                Spacer()
                AltTabControllerTab(showHome: $showHome, showCatalog: $showCatalog, showHistory: $showHistory, showOrders: $showOrders, showWishlist: $showWishlist, selector: $selector, systemIMG: "star.fill", tabName: "Wish List", tabNum: 4)
            }
            .padding(.horizontal, 22)
            .padding([.top], 8)
            .padding([.bottom], 3)
            .background(Color.altNavigationBar)
        }
    }
}

struct AltTabController_Previews: PreviewProvider {
    static var previews: some View {
        AltTabController()
    }
}
