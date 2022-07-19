//
//  CatalogSVC.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/6/22.
//

import SwiftUI

struct CatalogSVC: View {
    @EnvironmentObject var cartManager: CartManager
    @EnvironmentObject var ordersManager: OrdersManager
    
    var body: some View {
        VStack {
            NavigationBar()
                .environmentObject(cartManager)
                .environmentObject(ordersManager)
            ScrollView {
                SignupModal()
                CatalogAd(img: "catalog/c6a13e043f5b874eaf0cfadcb2802bef")
                CatalogCategories()
                CatalogAd(img: "catalog/szxm6eoPQq5avEnDen2omR-1024-80")
                CatalogFeatured()
                CatalogAd(img: "catalog/9bf037e1886f5de27c01b532fb552b2c")
                About()
                FooterHelper()
                Spacer()
            }
        }
        .navigationTitle("")
        .navigationBarHidden(true)
    }
}


