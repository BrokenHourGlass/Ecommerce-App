//
//  CategoryViewModel.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/12/22.
//

import Foundation

class CategoryViewModel {
    static func filterByCategory(targetCategory: String, productData: [NewProduct]) -> [NewProduct] {
        return productData.filter{
            $0.category == targetCategory
        }
    }
    
    static func placeholderProduct() -> NewProduct {
        return NewProduct(id: -1, name: "", category: "", new: false, price: -1, featured: false, cartIMG: "", productIMG: "", description: "", features: "", contents: [], previews: [], recommended: [])
    }
}
