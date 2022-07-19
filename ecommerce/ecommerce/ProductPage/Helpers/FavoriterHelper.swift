//
//  FavoriterHelper.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/14/22.
//

import SwiftUI

struct FavoriterHelper: View {
    @EnvironmentObject var wishlistManager: WishlistManager
    
    @State var showAlert = false
    
    var product: NewProduct
    var loggedIn = userDefaults.bool(forKey: "isLoggedIn")
    var userId = userDefaults.string(forKey: "userId")
    
    var body: some View {
        Button(action: {
            if (loggedIn) {
                let id = UUID().uuidString
                wishlistManager.addToWishlist(wishlistItemObj: WishlistItemModel(id: id, productId: product.id, status: true, userId: userId!))
                CDWishlistHelper.cdWishlistHelper.addToWishlist(wishlistItemObj: WishlistItemModel(id: id, productId: product.id, status: true, userId: userId!))
            } else {
                showAlert = true
            }
        }) {
            Image(systemName: "heart.fill")
                .resizable()
                .foregroundColor(Color.orange)
                .frame(width: 20, height: 20)
        }
        .frame(width: 40, height: 40)
        .alert(isPresented: $showAlert) {
            Alert(title: Text("Notification"), message: Text("Please log in to add this item to your wishlist"), dismissButton: .default(Text("OK")))
        }
    }
}
