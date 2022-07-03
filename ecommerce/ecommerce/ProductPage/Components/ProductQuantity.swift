//
//  ProductQuantity.swift
//  ecommerce
//
//  Created by Vincent Salinas on 6/30/22.
//

import SwiftUI

struct ProductQuantity: View {
    @EnvironmentObject var cartManager: CartManager
    
    var product: NewProduct
    
    var body: some View {
        HStack {
            QuantityHelper()
            Spacer()
            Button(action: {
                print("Added to cart!")
                cartManager.addToCart(product: product)
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
