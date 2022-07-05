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
                    HomePageHero()
                    HomePageFeatured()
                    HomePageAd(img: "home/pexels-jessica-lewis-creative-593324")
                    HomePageCategories()
                    HomePageAd(img: "home/pexels-karol-d-325153")
                    HomePageCategories()
                    HomePageAd(img: "home/pexels-pixabay-414548")
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
