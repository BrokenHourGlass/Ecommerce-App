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
    
    var product: NewProduct
    
    var body: some View {
        VStack(spacing: 10) {
            Text("YOU MAY ALSO LIKE")
                .font(.title2)
                .bold()
            VStack(spacing: 30) {
                RecommendedItemHelper(recommended: product.recommended[0])
                    .environmentObject(cartManager)
                    .environmentObject(historyManager)
                    .environmentObject(ordersManager)
                RecommendedItemHelper(recommended: product.recommended[1])
                    .environmentObject(cartManager)
                    .environmentObject(historyManager)
                    .environmentObject(ordersManager)
                RecommendedItemHelper(recommended: product.recommended[2])
                    .environmentObject(cartManager)
                    .environmentObject(historyManager)
                    .environmentObject(ordersManager)
            }
        }
        .padding(.vertical, 40)
    }
}

struct RecommendedHelper_Previews: PreviewProvider {
    static var previews: some View {
        RecommendedHelper(product: products[0])
            .environmentObject(CartManager())
            .environmentObject(HistoryManager())
            .environmentObject(OrdersManager())
        
    }
}
