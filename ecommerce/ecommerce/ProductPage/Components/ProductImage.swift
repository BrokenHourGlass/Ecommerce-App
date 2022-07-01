//
//  ProductImage.swift
//  ecommerce
//
//  Created by Vincent Salinas on 6/30/22.
//

import SwiftUI

struct ProductImage: View {
    var product: Product
    
    var body: some View {
        product.productIMG
            .resizable()
            .scaledToFill()
            .frame(height: 400)
            .clipped()
            .listRowInsets(EdgeInsets())
    }
}

struct ProductImage_Previews: PreviewProvider {
    static var previews: some View {
        ProductImage(product: ModelData().products[0])
    }
}
