//
//  FavoriterHelper.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/14/22.
//

import SwiftUI

struct FavoriterHelper: View {
    
    var product: NewProduct
    
    var body: some View {
        Button(action: {
//            wishlistManager.addToWishlist(wishlistItemObj: WishlistItemModel(id: UUID().uuidString, productId: product.id, status: true, userId: "Rando"))
        }) {
            Image(systemName: "star.fill")
                .foregroundColor(Color.yellow)
        }
        .frame(width: 40, height: 40)
    }
}

struct FavoriterHelper_Previews: PreviewProvider {
    static var previews: some View {
        FavoriterHelper(product: CategoryViewModel.placeholderProduct())
    }
}
