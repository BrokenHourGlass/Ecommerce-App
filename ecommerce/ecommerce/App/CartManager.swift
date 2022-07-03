//
//  CartState.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/2/22.
//

import Foundation

class CartManager: ObservableObject {
    @Published private(set) var items: [NewProduct] = []
    @Published private(set) var total: Int = 0
    
    func addToCart(product: NewProduct) {
        items.append(product)
        total += product.price
        display()
    }
    
    func remoteFromCart(product: NewProduct) {
        items = items.filter{ $0.id != product.id }
        total -= product.price
        display()
    }
    
    func display() {
        for x in items {
            print(x.name)
        }
    }
    
}
