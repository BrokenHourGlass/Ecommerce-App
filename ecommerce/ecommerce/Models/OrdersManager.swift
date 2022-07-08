//
//  OrdersManager.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/8/22.
//

import Foundation

class OrdersManager: ObservableObject {
    @Published private(set) var orders: [Order] = [
        Order(items: [
            CartItem(item: products[0], unitPrice: products[0].price, quantity: 399),
        ])
    ]
    
    func addToHistory(cart: [CartItem]) {
        orders.append(Order(items: cart))
        print("Added order to orders history")
    }
    
    func getHistory() -> [Order] {
        return orders
    }
    
}

class Order: Identifiable {
    var id = UUID()
    var date = Date()
    var status = OrderStatus.ordered.rawValue
    var items: [CartItem]
    
    init(items: [CartItem]) {
        self.items = items
    }
}

enum OrderStatus: Int {
    case ordered = 0
    case refundRequested = 1
}
