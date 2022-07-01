//
//  ProductSVC.swift
//  ecommerce
//
//  Created by Vincent Salinas on 6/30/22.
//

import SwiftUI

struct ProductSVC: View {
    var product = ModelData().products[0]
    
    var body: some View {
        VStack {
            NavigationBar()
            ProductImage(product: product)
            ProductDetails()
            ProductFeatures()
            ProductContents()
            ProductPreview()
            Spacer()
        }
    }
}

struct ProductSVC_Previews: PreviewProvider {
    static var previews: some View {
        ProductSVC()
    }
}
