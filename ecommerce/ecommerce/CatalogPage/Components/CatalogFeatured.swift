//
//  CatalogFeatured.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/6/22.
//

import SwiftUI

struct CatalogFeatured: View {
    @EnvironmentObject var cartManager: CartManager
    @EnvironmentObject var historyManager: HistoryManager
    @EnvironmentObject var ordersManager: OrdersManager
    @EnvironmentObject var commentsManager: CommentsManager
    @EnvironmentObject var wishlistManager: WishlistManager
    
    @State var showNextView = false
    @State var current = 0
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Featured Now!")
                .font(.title)
                .bold()
            Text("Check out all the new highly recommended swag")
                .font(.title3)
            NavigationLink(destination: ProductSVC(product: products[current]).environmentObject(cartManager).environmentObject(historyManager).environmentObject(ordersManager).environmentObject(commentsManager).environmentObject(wishlistManager), isActive: $showNextView) {
                EmptyView()
            }
            ScrollView(.horizontal) {
                LazyHStack {
                    ForEach(0..<products.count) { index in
                        Button(action: {
                            current = index
                            showNextView = true
                        }) {
                            HomePageProduct(product: products[index])
                        }
                    }
                }
            }
            .padding([.top], 10)
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
            .environmentObject(HistoryManager())
            .environmentObject(OrdersManager())
            .environmentObject(CommentsManager())
            .environmentObject(WishlistManager())
    }
}
