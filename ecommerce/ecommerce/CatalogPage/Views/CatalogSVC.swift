//
//  CatalogSVC.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/6/22.
//

import SwiftUI

struct CatalogSVC: View {
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationBar()
                    .environmentObject(cartManager)
                ScrollView {
                    LazyVStack {
                        CatalogSignUp()
                        CatalogAd()
                        CatalogCategories()
                        CatalogAd()
                        CatalogFeatured()
                        CatalogAd()
                        FooterHelper()
                        Spacer()
                    }
                }
            }
        }
    }
}

struct CatalogSVC_Previews: PreviewProvider {
    static var previews: some View {
        CatalogSVC()
            .environmentObject(CartManager())
    }
}
