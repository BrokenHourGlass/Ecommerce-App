//
//  CartItem.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/2/22.
//

import Foundation

class CartItem {
    var item: NewProduct
    var unitPrice: Int
    var quantity: Int
    
    init(item: NewProduct, unitPrice: Int, quantity: Int) {
        self.item = item
        self.unitPrice = unitPrice
        self.quantity = quantity
    }
}
