//
//  HeadPhonesModel.swift
//  ecommerce
//
//  Created by Liban Abdinur on 6/30/22.
//

import Foundation

struct HeadPHones: Codable, Identifiable{
    
    let id: Int
    let name: String
    let image: String
    let description: String
    let price: Int
    
    var formattedPrice: String { return "$\(price)"}
    
    
}
