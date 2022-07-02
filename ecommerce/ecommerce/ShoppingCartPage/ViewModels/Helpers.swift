//
//  Helpers.swift
//  ecommerce
//
//  Created by Vincent Salinas on 6/29/22.
//

import Foundation

func getTotal(products: [NewProduct]) -> Int {
    var total = 0
    for x in products {
        total = total + x.price
    }
    return total
}
