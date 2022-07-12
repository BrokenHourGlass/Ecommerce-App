//
//  HomePageProduct.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/5/22.
//

import SwiftUI

struct HomePageProduct: View {
    
    var product: NewProduct
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(product.productIMG)
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
                .clipped()
                .listRowInsets(EdgeInsets())
                .cornerRadius(15)
            VStack(alignment: .leading, spacing: 3) {
                Text(product.name)
                    .bold()
                    .font(.caption2)
                Text("$ \(product.price)")
                    .font(.caption2)
            }
        }
        .frame(width: 100)
    }
}

struct HomePageProduct_Previews: PreviewProvider {
    static var previews: some View {
        HomePageProduct(product: products[0])
    }
}
