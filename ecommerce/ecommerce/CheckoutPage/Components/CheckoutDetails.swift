//
//  CheckoutDetails.swift
//  ecommerce
//
//  Created by Vincent Salinas on 6/30/22.
//

import SwiftUI

struct CheckoutDetails: View {
    @EnvironmentObject var cartManager: CartManager
    var modelData = products
    
    var body: some View {
        VStack(spacing: 5) {
            CheckoutDetail(label: "TOTAL", cost: getTotal(items: cartManager.items))
            CheckoutDetail(label: "SHIPPING", cost: 5)
            CheckoutDetail(label: "TAX", cost: 10)
            CheckoutDetail(label: "GRAND TOTAL", cost: 599 * 5 + 5 + 10)
        }
        .padding([.top, .bottom], 24)
    }
}

struct CheckoutDetails_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutDetails()
    }
}
