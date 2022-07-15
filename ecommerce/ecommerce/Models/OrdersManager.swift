//
//  OrdersManager.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/8/22.
//

import Foundation

class OrdersManager: ObservableObject {
    @Published private(set) var orders: [Order] = CDOrdersHelper.cdOrdersHelper.getOrders()
    
    func addToHistory(order: Order) {
        orders.append(order)
        print("Added order to orders history")
    }
    
    func refundOrder(orderObj: Order) {
        let target = orders.first(where: {
            $0.orderId == orderObj.orderId
        })
        target?.status = 0
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
