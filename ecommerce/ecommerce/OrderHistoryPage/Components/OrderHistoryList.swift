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
    
    @State var showNextView = false
    @State var current = ""
    
    var body: some View {
        Group {
            NavigationLink(destination: OrderSVC(orderId: current).environmentObject(cartManager).environmentObject(ordersManager), isActive: $showNextView) {
                EmptyView()
            }
            ScrollView {
                LazyVStack(spacing: 12) {
                    ForEach(ordersManager.orders.reversed(), id: \.id) { order in
                        Button(action: {
                            current = order.orderId
                            showNextView = true
                        }) {
                            OrderItem(orderObj: order)
                                .environmentObject(cartManager)
                                .environmentObject(ordersManager)
                        }
                    }
                }
            }
            .padding([.top], 12)
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
