//
//  HomePageFeatured.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/5/22.
//

import SwiftUI

struct HomePageFeatured: View {
    @EnvironmentObject var cartManager: CartManager
    @EnvironmentObject var historyManager: HistoryManager
    
    var fgColor: Color
    var bgColor: Color
    
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
                        NavigationLink(destination: ProductSVC(product: products[index]).environmentObject(cartManager).environmentObject(historyManager)) {
                            HomePageProduct(product: products[index])
                        }
                    }
                }
            }
        }
        .padding([.leading, .top, .bottom], 15)
        .foregroundColor(fgColor)
        .background(bgColor)
    }
}

struct HomePageFeatured_Previews: PreviewProvider {
    static var previews: some View {
        HomePageFeatured(fgColor: Color.white, bgColor: Color.pink)
            .environmentObject(CartManager())
            .environmentObject(HistoryManager())
    }
}
