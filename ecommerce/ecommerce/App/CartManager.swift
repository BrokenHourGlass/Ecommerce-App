//
//  CartState.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/2/22.
//

import Foundation

class CartManager: ObservableObject {
    @Published private(set) var items: [CartItem] = []
    @Published private(set) var total: Int = 0
    
    func addToCart(product: NewProduct, qty: Int) {
        items.append(CartItem(item: product, unitPrice: product.price, quantity: qty))
        total += product.price * qty
    }
    
    func remoteFromCart(product: NewProduct) {
        items = items.filter{ $0.item.id != product.id }
        total -= product.price
    }
    
}
