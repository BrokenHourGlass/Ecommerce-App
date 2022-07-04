//
//  Helpers.swift
//  ecommerce
//
//  Created by Vincent Salinas on 6/29/22.
//

import Foundation

func getTotal(items: [CartItem]) -> Int {
    var total = 0
    for x in items {
        total = x.unitPrice * x.quantity
    }
    return total
}
