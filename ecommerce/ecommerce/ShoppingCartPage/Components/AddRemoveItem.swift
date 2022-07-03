//
//  AddRemoveItem.swift
//  ecommerce
//
//  Created by Vincent Salinas on 6/30/22.
//

import SwiftUI

struct AddRemoveItem: View {
    @EnvironmentObject var cartManager: CartManager
    
    var product: NewProduct
    
    var body: some View {
        VStack {
            HStack {
                Button {
                   print("removed item")
                } label: {
                    Image(systemName: "minus")
                }
                Text("2")
                Button {
                   print("added item")
                    cartManager.addToCart(product: product)
                } label: {
                    Image(systemName: "plus")
                }
            }
        }
    }
}

struct AddRemoveItem_Previews: PreviewProvider {
    static var previews: some View {
        AddRemoveItem(product: products[0])
            .environmentObject(CartManager())
    }
}
