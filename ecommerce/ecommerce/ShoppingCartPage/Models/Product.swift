//
//  Product.swift
//  ecommerce
//
//  Created by Vincent Salinas on 6/29/22.
//

import Foundation
import SwiftUI

struct Product: Identifiable {
    var id: Int
    var name: String
    var description: String
    var featured: Bool
    var features: String
    var category: String
    var price: Int
    var img: Image
}
