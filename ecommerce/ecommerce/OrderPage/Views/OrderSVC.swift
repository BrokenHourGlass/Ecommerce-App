//
//  OrderSVC.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/8/22.
//

import SwiftUI

struct OrderSVC: View {
    
    var orderId: String?
    
    var body: some View {
        VStack {
            SignupModal()
            ScrollView {
                LazyVStack {
                    ForEach(CDOrderHelper.cdOrderHelper.getOrderItems(orderId: orderId!), id: \.item.id) { item in
                        OrderItemSVC(it: item)
                    }
                }
            }
            Spacer()
        }
        .navigationTitle("")
        .navigationBarHidden(true)
    }
}

struct OrderSVC_Previews: PreviewProvider {
    static var previews: some View {
        OrderSVC(orderId: "some order Id")
    }
}
