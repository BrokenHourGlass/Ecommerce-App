//
//  AddRemoveItem.swift
//  ecommerce
//
//  Created by Vincent Salinas on 6/30/22.
//

import SwiftUI

struct AddRemoveItem: View {
    @EnvironmentObject var cartManager: CartManager
    
    var item: CartItem
    
    var body: some View {
        VStack {
            HStack {
                Button {
                    cartManager.decrementQty(it: item)
                } label: {
                    Image(systemName: "minus")
                }
                Text(String(item.quantity))
                Button {
                    cartManager.incrementQty(it: item)
                } label: {
                    Image(systemName: "plus")
                }
            }
        }
    }
}

struct AddRemoveItem_Previews: PreviewProvider {
    static var previews: some View {
        AddRemoveItem(item: CartItem(item: products[0], unitPrice: 399, quantity: 1))
            .environmentObject(CartManager())
    }
}
