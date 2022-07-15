//
//  WishlistItemModel.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/14/22.
//

import Foundation
import SwiftUI

struct WishlistItemModel {
    var id: String
    var productId: Int
    var status: Bool
    var userId: String
    
    init(id: String, productId: Int, status: Bool, userId: String) {
        self.id = id
        self.productId = productId
        self.status = status
        self.userId = userId
    }
}

