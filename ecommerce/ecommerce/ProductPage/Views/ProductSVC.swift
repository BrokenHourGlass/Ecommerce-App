//
//  ProductSVC.swift
//  ecommerce
//
//  Created by Vincent Salinas on 6/30/22.
//

import SwiftUI

struct ProductSVC: View {
    @EnvironmentObject var cartManager: CartManager
    @EnvironmentObject var historyManager: HistoryManager
    @EnvironmentObject var ordersManager: OrdersManager
    @EnvironmentObject var commentsManager: CommentsManager
    @EnvironmentObject var wishlistManager: WishlistManager
    @EnvironmentObject var services: Services
    
    var product: NewProduct
    let columns: [GridItem] = [GridItem(.flexible())]
    
    var body: some View {
        VStack {
            NavigationBar()
                .environmentObject(cartManager)
                .environmentObject(ordersManager)
            NavigationBack()
            ScrollView {
                SignupModal()
                    .padding(.horizontal, 12)
                VStack(spacing: 30) {
                    ProductComments(product: product)
                        .environmentObject(commentsManager)
                        .environmentObject(cartManager)
                        .environmentObject(ordersManager)
                    ProductImage(product: product)
                    ProductDetails(product: product)
                        .environmentObject(wishlistManager)
                    ProductQuantity(product: product)
                        .environmentObject(cartManager)
                    ProductFeatures(product: product)
                    ProductContents(product: product)
                    ProductPreview(product: product)
                    ProductComments(product: product)
                        .environmentObject(commentsManager)
                        .environmentObject(cartManager)
                        .environmentObject(ordersManager)
                }
                .padding(.horizontal, 27)
                RecommendedHelper(product: product)
                    .environmentObject(cartManager)
                    .environmentObject(historyManager)
                    .environmentObject(ordersManager)
                    .environmentObject(commentsManager)
                    .environmentObject(wishlistManager)
                    .environmentObject(services)
                ChooseCategory()
                    .environmentObject(cartManager)
                    .environmentObject(historyManager)
                    .environmentObject(ordersManager)
                    .environmentObject(commentsManager)
                    .environmentObject(wishlistManager)
                    .environmentObject(services)
                About()
                FooterHelper()
            }
        }
        .navigationTitle("")
        .navigationBarHidden(true)
        .onAppear(perform: {
            historyManager.addToHistory(product: product)
            SearchHistoryHelpers.addSearchItem(product: product)
        })
    }
}

