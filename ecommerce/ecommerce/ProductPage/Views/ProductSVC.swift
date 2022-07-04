//
//  ProductSVC.swift
//  ecommerce
//
//  Created by Vincent Salinas on 6/30/22.
//

import SwiftUI

struct ProductSVC: View {
    @EnvironmentObject var cartManager: CartManager
    
    var product: NewProduct?
    let columns: [GridItem] = [GridItem(.flexible())]
    
    var body: some View {
        VStack {
            NavigationBar()
            NavigationBack()
            ScrollView {
                LazyVGrid(columns: columns, spacing: 30) {
                    ProductImage(product: product!)
                        .padding([.leading, .trailing], 27)
                    ProductDetails(product: product!)
                        .padding([.leading, .trailing], 27)
                    ProductQuantity(product: product!)
                        .padding([.leading, .trailing], 27)
                        .environmentObject(cartManager)
                    ProductFeatures(product: product!)
                        .padding([.leading, .trailing], 27)
                    ProductContents(product: product!)
                        .padding([.leading, .trailing], 27)
                    ProductPreview(product: product!)
                        .padding([.leading, .trailing], 27)
                    RecommendedHelper(product: product!)
                    ChooseCategory()
                    About()
                    FooterHelper()
                }
            }
        }
        .navigationTitle("")
        .navigationBarHidden(true)
    }
}

struct ProductSVC_Previews: PreviewProvider {
    static var previews: some View {
        ProductSVC(product: products[0])
    }
}
