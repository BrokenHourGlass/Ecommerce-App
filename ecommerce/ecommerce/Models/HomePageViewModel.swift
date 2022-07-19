//
//  HomePageViewModel.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/18/22.
//

import Foundation

class HomePageViewModel {
    static func placeHolderProduct() -> NewProduct {
        return NewProduct(id: 0, name: "", category: "", new: false, price: 0, featured: false, cartIMG: "", productIMG: "", description: "", features: "", contents: [], previews: [], recommended: [])
    }
}
