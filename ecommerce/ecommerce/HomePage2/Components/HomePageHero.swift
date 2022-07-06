//
//  HomePageHero.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/5/22.
//

import SwiftUI

struct HomePageHero: View {
    var body: some View {
        VStack(alignment: .center) {
            Image("home/online-sale-shopping-vector-banner-design-online-shopping-text-with-phone-cart-and-paper-bag-elements-in-smartphone-app-store-for-mobile-business-2D7GAPB")
                .resizable()
                .scaledToFill()
                .frame(height: 200)
                .clipped()
                .listRowInsets(EdgeInsets())
        }
    }
}

struct HomePageHero_Previews: PreviewProvider {
    static var previews: some View {
        HomePageHero()
    }
}
