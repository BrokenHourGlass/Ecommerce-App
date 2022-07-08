//
//  CatalogSVC.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/6/22.
//

import SwiftUI

struct CatalogSVC: View {
    @EnvironmentObject var cartManager: CartManager
    @EnvironmentObject var historyManager: HistoryManager
    
    var body: some View {
        VStack {
            NavigationBar()
                .environmentObject(cartManager)
            ScrollView {
                LazyVStack {
                    SignupModal()
                    CatalogAd(img: "catalog/c6a13e043f5b874eaf0cfadcb2802bef")
                    CatalogCategories()
                        .environmentObject(cartManager)
                        .environmentObject(historyManager)
                    CatalogAd(img: "catalog/szxm6eoPQq5avEnDen2omR-1024-80")
                    CatalogFeatured()
                        .environmentObject(cartManager)
                        .environmentObject(historyManager)
                    CatalogAd(img: "catalog/9bf037e1886f5de27c01b532fb552b2c")
                    About()
                    FooterHelper()
                    Spacer()
                }
            }
        }
        .navigationTitle("")
        .navigationBarHidden(true)
    }
}

struct CatalogSVC_Previews: PreviewProvider {
    static var previews: some View {
        CatalogSVC()
            .environmentObject(CartManager())
            .environmentObject(HistoryManager())
        
    }
}
