//
//  OrderViewModel.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/14/22.
//

import Foundation

class OrderViewModel {
    static func getStatus(orderObj: Order) -> Bool {
        var refunded = false
        
        if (orderObj.status != 1) {
            refunded = true
        }
       
        return refunded
    }
}
