//
//  CartItem.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/2/22.
//

import Foundation

class CartItem {
    var item: NewProduct
    var quantity: Int
    
    init(item: NewProduct, quantity: Int) {
        self.item = item
        self.quantity = quantity
    }
}
