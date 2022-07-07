//
//  CatalogFeatured.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/6/22.
//

import SwiftUI

struct CatalogFeatured: View {
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Featured Now!")
                .font(.title)
                .bold()
            Text("Check out all the new highly recommended swag")
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

struct CatalogFeatured_Previews: PreviewProvider {
    static var previews: some View {
        CatalogFeatured()
            .environmentObject(CartManager())
    }
}
