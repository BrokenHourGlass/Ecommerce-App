//
//  OrderRefund.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/14/22.
//

import SwiftUI

struct OrderRefund: View {
    @EnvironmentObject var ordersManager: OrdersManager
    
    var orderId: String
    
    var body: some View {
        VStack {
            Button(action: {
                ordersManager.refundOrder(orderId: orderId)
                CDOrdersHelper.cdOrdersHelper.refundOrder(orderId: orderId)
            }) {
                Text("Refund")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .border(Color.red)
            }
            .foregroundColor(Color.white)
            .background(Color.red)
        }
        .padding()
    }
    
}

struct OrderRefund_Previews: PreviewProvider {
    static var previews: some View {
        OrderRefund(orderId: "orderId")
            .environmentObject(OrdersManager())
    }
}
