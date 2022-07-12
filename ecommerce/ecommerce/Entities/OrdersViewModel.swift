//
//  OrdersViewModel.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/8/22.
//

import Foundation

class OrdersViewModel {
    static func createNewOrder() -> Order {
        return Order(orderId: UUID().uuidString, date: Date(), status: 0)
    }
}
