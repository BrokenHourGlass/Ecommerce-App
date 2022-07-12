//
//  ProductSVC.swift
//  ecommerce
//
//  Created by Vincent Salinas on 6/30/22.
//

import SwiftUI

struct ProductSVC: View {
    @EnvironmentObject var cartManager: CartManager
    @EnvironmentObject var historyManager: HistoryManager
    @EnvironmentObject var ordersManager: OrdersManager
    
    var product: NewProduct
    let columns: [GridItem] = [GridItem(.flexible())]
    
    var body: some View {
        VStack {
            NavigationBar()
                .environmentObject(cartManager)
                .environmentObject(ordersManager)
            NavigationBack()
            ScrollView {
                SignupModal()
                    .padding(.horizontal, 12)
                VStack(spacing: 30) {
                    ProductComments(product: product)
                    ProductImage(product: product)
                    ProductDetails(product: product)
                    ProductQuantity(product: product)
                        .environmentObject(cartManager)
                    ProductFeatures(product: product)
                    ProductContents(product: product)
                    ProductPreview(product: product)
                }
                .padding(.horizontal, 27)
                RecommendedHelper(product: product)
                    .environmentObject(cartManager)
                    .environmentObject(historyManager)
                    .environmentObject(ordersManager)
                ChooseCategory()
                    .environmentObject(cartManager)
                    .environmentObject(historyManager)
                    .environmentObject(ordersManager)
                About()
                FooterHelper()
            }
        }
        .navigationTitle("")
        .navigationBarHidden(true)
        .onAppear(perform: {
            historyManager.addToHistory(product: product)
            SearchHistoryHelpers.addSearchItem(product: product)
        })
    }
}

struct ProductSVC_Previews: PreviewProvider {
    static var previews: some View {
        ProductSVC(product: products[0])
            .environmentObject(CartManager())
            .environmentObject(HistoryManager())
            .environmentObject(OrdersManager())
    }
}
