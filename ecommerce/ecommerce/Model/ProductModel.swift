//
//  ProductModel.swift
//  ecommerce
//
//  Created by Liban Abdinur on 7/2/22.
//

import Foundation

struct Product: Codable, Identifiable{
    
    let id: Int
    let name: String
    let image: String
    let price: Int
    let description: String
    let color:[Double]
    
    
    
    var formattedprice: String{ return "$\(price)"}
}
