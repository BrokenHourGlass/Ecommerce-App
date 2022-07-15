//
//  WishlistViewModel.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/14/22.
//

import Foundation

class WishlistViewModel {
    
    static func getProduct(productID: Int) -> NewProduct {
        return products.first(where: {
            $0.id == productID
        })!
    }
    
}
