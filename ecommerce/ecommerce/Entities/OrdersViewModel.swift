//
//  OrdersViewModel.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/8/22.
//

import Foundation

class OrdersViewModel {
    static func createNewOrder() -> Order {
        return Order(orderId: UUID().uuidString, date: Date(), status: 1)
    }
    
    static func getSymbol(status: Int) -> String {
        var result = "circle"
        
        if (status != 1) {
            result = "xmark"
        }
        
        return result
    }
    
    static func getStatus(status: Int) -> String {
        var result = "Ordered"
        
        if (status != 1) {
            result = "Refunded"
        }
        
        return result
    }
}
