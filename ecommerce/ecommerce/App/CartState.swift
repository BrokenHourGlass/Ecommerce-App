//
//  CartState.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/2/22.
//

import Foundation

class CartState: ObservableObject {
    @Published var items = [CartItem]()
    
    func addItem(product: NewProduct, qty: Int) {
        items.append(CartItem(item: product, quantity: qty))
    }
}
