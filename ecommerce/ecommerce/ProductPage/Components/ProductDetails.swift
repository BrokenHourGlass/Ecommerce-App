//
//  ProductDetails.swift
//  ecommerce
//
//  Created by Vincent Salinas on 6/30/22.
//

import SwiftUI

struct ProductDetails: View {
    var product: NewProduct
    
    var body: some View {
        VStack(alignment: .leading, spacing: 13)  {
            HStack {
                Text(product.name)
                    .font(.title)
                    .bold()
                Spacer()
                FavoriterHelper(product: product)
            }
            Text(product.description)
            Text("$ \(product.price)")
                .fontWeight(.bold)
        }
    }
}

struct ProductDetails_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetails(product: products[0])
    }
}
