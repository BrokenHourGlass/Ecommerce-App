//
//  OrderItem.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/8/22.
//

import SwiftUI

struct OrderItem: View {
    @EnvironmentObject var cartManager: CartManager
    @EnvironmentObject var ordersManager: OrdersManager
    
    var orderObj: Order
    
    var body: some View {
        NavigationLink(destination: OrderSVC(orderId: orderObj.orderId).environmentObject(cartManager).environmentObject(ordersManager)) {
            HStack {
                Image(systemName: "circle")
                    .foregroundColor(Color.accentColor)
                Text(orderObj.orderId)
                    .lineLimit(1)
                    .foregroundColor(Color.black)
                Spacer()
                Button("Refund") {
                    print("refund requested")
                }
                .foregroundColor(Color.accentColor)
            }
        }
    }
}

struct OrderItem_Previews: PreviewProvider {
    static var previews: some View {
        OrderItem(orderObj: Order(orderId: UUID().uuidString, date: Date(), status: 0))
            .environmentObject(CartManager())
            .environmentObject(OrdersManager())
        
    }
}
