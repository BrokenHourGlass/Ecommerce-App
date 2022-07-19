//
//  ProductPreview.swift
//  ecommerce
//
//  Created by Vincent Salinas on 6/30/22.
//

import SwiftUI

struct ProductPreview: View {
    var product: NewProduct
    var body: some View {
        VStack(spacing: 10) {
            ForEach(product.previews, id: \.self) { preview in
                PreviewHelper(img: preview.img)
            }
        }
    }
}

struct ProductPreview_Previews: PreviewProvider {
    static var previews: some View {
        ProductPreview(product: products[0])
    }
}
