//
//  CatalogData.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/6/22.
//

import Foundation

class CatalogData {
   static var categories = [
        CategoryData(category: "Earphones", img: "product-yx1-earphones/image-category-page-preview"),
        CategoryData(category: "Headphones", img: "product-xx59-headphones/image-category-page-preview"),
        CategoryData(category: "Speakers", img: "product-zx9-speaker/image-category-page-preview"),
   ]
    
}

struct CategoryData {
    var category: String
    var img: String
    
    init(category: String, img: String) {
        self.category = category
        self.img = img
    }
}
