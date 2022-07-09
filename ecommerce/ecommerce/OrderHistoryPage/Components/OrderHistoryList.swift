//
//  OrderHistoryList.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/8/22.
//

import SwiftUI

struct OrderHistoryList: View {
    @EnvironmentObject var cartManager: CartManager
    @EnvironmentObject var historyManager: HistoryManager
    @EnvironmentObject var ordersManager: OrdersManager
    
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 12) {
                ForEach(ordersManager.orders.reversed(), id: \.id) { order in
                    OrderItem(orderObj: order)
                        .environmentObject(cartManager)
                        .environmentObject(ordersManager)
                }
            }
        }
    }
}

struct OrderHistoryList_Previews: PreviewProvider {
    static var previews: some View {
        OrderHistoryList()
            .environmentObject(CartManager())
            .environmentObject(HistoryManager())
            .environmentObject(OrdersManager())
    }
}
