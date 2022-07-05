//
//  HomePage2SVC.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/5/22.
//

import SwiftUI

struct HomePage2SVC: View {
    @EnvironmentObject var cartManager: CartManager
    
    let columns: [GridItem] = [GridItem(.flexible())]
    
    var body: some View {
        VStack {
            NavigationBar()
            ScrollView {
                LazyVGrid(columns: columns) {
                    HomePageCarousel()
                        .environmentObject(cartManager)
                    HomePageMessage()
                    HomePageFeatured()
                    HomePageCategories()
                    HomePageAd()
                    HomePageCategories()
                    HomePageAd()
                    HomePageAd()
                    HomePageCategories()
                    FooterHelper()
                }
            }
        }
    }
}

struct HomePage2SVC_Previews: PreviewProvider {
    static var previews: some View {
        HomePage2SVC()
            .environmentObject(CartManager())
    }
}
