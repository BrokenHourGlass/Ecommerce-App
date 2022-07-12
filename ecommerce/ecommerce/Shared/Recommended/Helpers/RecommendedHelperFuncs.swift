//
//  RecommendedHelperFuncs.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/11/22.
//

import Foundation

class RecommendedHelperFuncs {
    static func getProduct(productName: String) -> NewProduct {
        return products.first(where: {
            $0.name.lowercased().contains(productName.lowercased())
        })!
    }
}
