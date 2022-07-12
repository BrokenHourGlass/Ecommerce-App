//
//  AddRemoveItem.swift
//  ecommerce
//
//  Created by Vincent Salinas on 6/30/22.
//

import SwiftUI

struct AddRemoveItem: View {
    @EnvironmentObject var cartManager: CartManager
    
    @State var qty : Int
    
    var item: CartItem
    
    init(_ qty: Int, item: CartItem) {
        _qty = State<Int>(initialValue: qty)
        self.item = item
    }
    
    var body: some View {
        VStack {
            HStack {
                Button {
                    qty -= 1
                    cartManager.decrementQty(it: item)
                } label: {
                    Image(systemName: "minus")
                }
                Text(String(qty))
                Button {
                    qty += 1
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
        AddRemoveItem(5, item: CartItem(item: products[0], unitPrice: 399, quantity: 5))
            .environmentObject(CartManager())
    }
}
