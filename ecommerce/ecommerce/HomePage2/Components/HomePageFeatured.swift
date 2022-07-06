//
//  HomePageFeatured.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/5/22.
//

import SwiftUI

struct HomePageFeatured: View {
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Checkout these summer essentials!")
                .font(.title)
                .bold()
            Text("Up to 50% off marked prices")
                .font(.title3)
            ScrollView(.horizontal) {
                LazyHStack {
                    ForEach(0..<products.count) { index in
                        NavigationLink(destination: ProductSVC(product: products[index]).environmentObject(cartManager)) {
                            HomePageProduct(product: products[index])
                        }
                    }
                }
            }
        }
        .padding([.leading, .top, .bottom], 15)
        .foregroundColor(Color.white)
        .background(Color.pink)
    }
}

struct HomePageFeatured_Previews: PreviewProvider {
    static var previews: some View {
        HomePageFeatured()
            .environmentObject(CartManager())
    }
}
