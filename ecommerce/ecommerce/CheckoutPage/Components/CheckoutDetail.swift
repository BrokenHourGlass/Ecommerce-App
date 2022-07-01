//
//  CheckoutDetail.swift
//  ecommerce
//
//  Created by Vincent Salinas on 6/30/22.
//

import SwiftUI

struct CheckoutDetail: View {
    var label: String
    var cost: Int
    
    var body: some View {
        HStack {
            Text(label)
            Spacer()
            Text("$ \(cost)")
        }
    }
}

struct CheckoutDetail_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutDetail(label: "label", cost: 5396)
    }
}
