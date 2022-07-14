//
//  OrderSVC.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/8/22.
//

import SwiftUI

struct OrderSVC: View {
    @EnvironmentObject var cartManager: CartManager
    @EnvironmentObject var ordersManager: OrdersManager
    
    var orderId: String?
    
    var body: some View {
        VStack {
            NavigationBar()
                .environmentObject(cartManager)
                .environmentObject(ordersManager)
            NavigationBack()
            SignupModal()
            ScrollView {
                ForEach(CDOrderHelper.cdOrderHelper.getOrderItems(orderId: orderId!), id: \.item.id) { item in
                    OrderItemSVC(it: item)
                }
            }
            .padding(.horizontal, 15)
            Spacer()
            OrderRefund()
        }
        .navigationTitle("")
        .navigationBarHidden(true)
    }
}

struct OrderSVC_Previews: PreviewProvider {
    static var previews: some View {
        OrderSVC(orderId: "some order Id")
            .environmentObject(CartManager())
            .environmentObject(OrdersManager())
    }
}
