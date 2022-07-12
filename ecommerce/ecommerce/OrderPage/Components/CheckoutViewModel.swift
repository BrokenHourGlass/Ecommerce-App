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
}

enum CheckoutErrors: Error {
    case fieldIsEmpty
}
