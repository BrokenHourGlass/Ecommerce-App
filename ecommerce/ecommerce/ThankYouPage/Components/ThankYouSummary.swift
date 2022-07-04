//
//  ThankYouSummary.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/3/22.
//

import SwiftUI

struct ThankYouSummary: View {
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(cartManager.items, id: \.id) { product in
                    HStack {
                        Image(product.cartIMG)
                            .resizable()
                            .frame(width: 100, height: 100)
                        VStack(alignment: .leading, spacing: 5) {
                            Text(product.name)
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                                .lineLimit(1)
                            Text("$ \(product.price)")
                        }
                        Spacer()
                    }
                }
            }
        }
    }
}

struct ThankYouSummary_Previews: PreviewProvider {
    static var previews: some View {
        ThankYouSummary()
    }
}
