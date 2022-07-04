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
            CheckoutDetail(label: "TOTAL", cost: cartManager.getTotal())
            CheckoutDetail(label: "SHIPPING", cost: AddedCosts.shipping.rawValue)
            CheckoutDetail(label: "TAX", cost: AddedCosts.tax.rawValue)
            CheckoutDetail(label: "GRAND TOTAL", cost: cartManager.getTotal() + AddedCosts.shipping.rawValue + AddedCosts.tax.rawValue)
        }
        .padding([.top, .bottom], 24)
    }
}

struct CheckoutDetails_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutDetails()
    }
}
