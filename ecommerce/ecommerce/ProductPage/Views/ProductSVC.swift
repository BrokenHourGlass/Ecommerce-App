//
//  ProductSVC.swift
//  ecommerce
//
//  Created by Vincent Salinas on 6/30/22.
//

import SwiftUI

struct ProductSVC: View {
    var product = ModelData().products[0]
    let columns: [GridItem] = [GridItem(.flexible())]
    
    var body: some View {
        VStack {
            NavigationBar()
            ScrollView {
                LazyVGrid(columns: columns) {
                    ProductImage(product: product)
                    ProductDetails(product: product)
                    ProductQuantity()
                    ProductFeatures(product: product)
                    ProductContents(product: product)
                    ProductPreview()
                    Spacer()
                }
            }
            .padding([.leading, .trailing], 27)
            
        }
    }
}

struct ProductSVC_Previews: PreviewProvider {
    static var previews: some View {
        ProductSVC()
    }
}
