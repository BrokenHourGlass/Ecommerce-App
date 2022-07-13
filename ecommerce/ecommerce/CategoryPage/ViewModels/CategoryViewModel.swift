//
//  CategoryViewModel.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/12/22.
//

import Foundation

class CategoryViewModel {
    static func filterByCategory(targetCategory: String) -> [NewProduct] {
        return products.filter{
            $0.category == targetCategory
        }
    }
}
