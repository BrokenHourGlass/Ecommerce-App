//
//  ProductQuantity.swift
//  ecommerce
//
//  Created by Vincent Salinas on 6/30/22.
//

import SwiftUI

struct ProductQuantity: View {
    @EnvironmentObject var cartManager: CartManager
    @State private var quantity = 0
    
    var product: NewProduct?
    
    var body: some View {
        HStack {
            QuantityHelper(quantity: self.$quantity)
            Spacer()
            Button(action: {
                print("Added to cart!")
                cartManager.addToCart(product: product!, qty: quantity)
            }) {
                Text("ADD TO CART")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .border(Color.red)
            }
            .foregroundColor(Color.white)
            .background(Color.red)
        }
    }
}

struct ProductQuantity_Previews: PreviewProvider {
    static var previews: some View {
        ProductQuantity(product: products[0])
            .environmentObject(CartManager())
    }
}
