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
    
    static func validateForm(checkoutDetailsObj: CheckoutDetailsObj) -> Bool {
        var status = false
        
        do {
            try validateFields(checkoutDetailsObj: checkoutDetailsObj)
            status = true
        } catch CheckoutErrors.fieldIsEmpty {
            print("All fields must be filled in")
        } catch {
            print("Unknown error thrown")
        }
        
        return status
    }
    
    static func getShippingCost(total: Int) -> Int {
        var shippingCost = 0
        
        if (total < 200) {
            shippingCost = 10
        }
        
        return shippingCost
    }
    
}

enum CheckoutErrors: Error {
    case fieldIsEmpty
}
