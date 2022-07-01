//
//  Product.swift
//  ecommerce
//
//  Created by Vincent Salinas on 6/29/22.
//

import Foundation
import SwiftUI

struct NewProduct: Decodable, Identifiable {
    var id: Int
    var name: String
    var description: String
    var featured: Bool
    var features: String
    var category: String
    var price: Int
    var cartIMG: String
    var productIMG: String
    var contents: [NewItem]
    var previews: [NewPreview]
    var recommended: [NewRecommended]
    var new: Bool
}

struct NewItem: Decodable {
    var quantity: Int
    var item: String
}

struct NewPreview: Decodable {
    var img: String
}

struct NewRecommended: Decodable {
    var name: String
    var img: NewPreview
}



