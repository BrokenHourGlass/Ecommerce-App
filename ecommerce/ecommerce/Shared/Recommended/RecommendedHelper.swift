//
//  RecommendedHelper.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/1/22.
//

import SwiftUI

struct RecommendedHelper: View {
    @EnvironmentObject var cartManager: CartManager
    @EnvironmentObject var historyManager: HistoryManager
    @EnvironmentObject var ordersManager: OrdersManager
    @EnvironmentObject var commentsManager: CommentsManager
    @EnvironmentObject var wishlistManager: WishlistManager
    @EnvironmentObject var services: Services
    
    var product: NewProduct
    
    var body: some View {
        VStack(spacing: 10) {
            Text("YOU MAY ALSO LIKE")
                .font(.title2)
                .bold()
            VStack(spacing: 30) {
                ForEach(product.recommended, id: \.self) { product in
                    RecommendedItemHelper(recommended: product)
                        .environmentObject(cartManager)
                        .environmentObject(historyManager)
                        .environmentObject(ordersManager)
                        .environmentObject(wishlistManager)
                        .environmentObject(services)
                }
            }
        }
        .padding(.vertical, 40)
    }
}

