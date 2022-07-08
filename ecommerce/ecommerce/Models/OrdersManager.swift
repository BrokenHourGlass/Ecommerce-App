//
//  OrdersManager.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/8/22.
//

import Foundation

class OrdersManager: ObservableObject {
    @Published private(set) var orders: [Order] = []
    
    func addToHistory(order: Order) {
        orders.append(order)
        print("Added order to orders history")
    }
    
    func getHistory() -> [Order] {
        return orders
    }
    
}

class Order: Identifiable {
    var orderId: String
    var date: Date
    var status: Int
    
    init(orderId: String, date: Date, status: Int) {
        self.orderId = orderId
        self.date = date
        self.status = status
    }
}

enum OrderStatus: Int {
    case ordered = 0
    case refundRequested = 1
}
