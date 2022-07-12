//
//  ShoppingCartViewModel.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/11/22.
//

import Foundation

class ShoppingCartViewModel {
    static func cartIsNotEmpty(cart: [CartItem]) -> Bool {
        return !cart.isEmpty
    }
}

enum ShoppingCartConstants: Error {
    case cartIsEmpty
}
