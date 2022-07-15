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
        HStack {
            Image(systemName: OrdersViewModel.getSymbol(status: orderObj.status))
                .foregroundColor(Color.accentColor)
            VStack(alignment: .leading) {
                Text(orderObj.orderId)
                    .lineLimit(1)
                    .foregroundColor(Color.black)
                Text(formateDate(date: orderObj.date))
                    .foregroundColor(Color.gray)
            }
            .padding(.horizontal, 5)
            Spacer()
            Button(OrdersViewModel.getStatus(status: orderObj.status)) {
                print("refund requested")
            }
            .foregroundColor(Color.accentColor)
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
