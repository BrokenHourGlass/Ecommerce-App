//
//  OrderItem.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/8/22.
//

import SwiftUI

struct OrderItem: View {
    var orderObj: Order
    
    var body: some View {
        HStack {
            Image(systemName: "circle")
                .foregroundColor(Color.accentColor)
            Text(orderObj.orderId)
                .lineLimit(1)
            Spacer()
            Button("Refund") {
                print("refund requested")
            }
            .foregroundColor(Color.accentColor)
        }
    }
}

struct OrderItem_Previews: PreviewProvider {
    static var previews: some View {
        OrderItem(orderObj: Order(orderId: UUID().uuidString, date: Date(), status: 0))
    }
}
