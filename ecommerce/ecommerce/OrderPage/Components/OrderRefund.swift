//
//  OrderRefund.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/14/22.
//

import SwiftUI

struct OrderRefund: View {
    @EnvironmentObject var ordersManager: OrdersManager
    
    @State var refunded = false
    
    var orderId: String
    
    var body: some View {
        VStack {
            Button(action: {
                ordersManager.refundOrder(orderId: orderId)
                CDOrdersHelper.cdOrdersHelper.refundOrder(orderId: orderId)
                refunded = true
            }) {
                Text(refunded ? "Refunded" : "Refund")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .border(Color.red)
            }
            .disabled(refunded)
            .foregroundColor(Color.white)
            .background(!refunded ? Color.red : Color.gray)
        }
        .padding()
        .onAppear(perform: {
            refunded = OrderViewModel.getStatus(orderObj: ordersManager.orders.first(where: { $0.orderId == orderId})!)
        })
    }
    
}

struct OrderRefund_Previews: PreviewProvider {
    static var previews: some View {
        OrderRefund(orderId: "orderId")
            .environmentObject(OrdersManager())
    }
}
