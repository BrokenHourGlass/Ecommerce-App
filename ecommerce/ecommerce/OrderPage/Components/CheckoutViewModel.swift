//
//  CheckoutViewModel.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/8/22.
//

import Foundation

class CheckoutViewModel {
    static func storeOrderItems(orderId: String, cart: [CartItem]) {
        for x in cart {
            CDOrderHelper.cdOrderHelper.addOrderItem(orderId: orderId, cartItemObj: x)
        }
    }
}
