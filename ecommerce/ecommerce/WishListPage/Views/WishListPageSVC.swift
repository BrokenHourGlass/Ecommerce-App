//
//  WishListPageSVC.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/14/22.
//

import SwiftUI

struct WishListPageSVC: View {
    @EnvironmentObject var cartManager: CartManager
    @EnvironmentObject var historyManager: HistoryManager
    @EnvironmentObject var ordersManager: OrdersManager
    @EnvironmentObject var commentsManager: CommentsManager
    @EnvironmentObject var wishlistManager: WishlistManager
    
    @State var showNextView = false
    @State var current: NewProduct = CategoryViewModel.placeholderProduct()
    
    var body: some View {
        VStack {
            NavigationBar()
                .environmentObject(cartManager)
                .environmentObject(ordersManager)
            NavigationLink(destination: ProductSVC(product: current).environmentObject(cartManager).environmentObject(historyManager).environmentObject(ordersManager).environmentObject(commentsManager).environmentObject(wishlistManager), isActive: $showNextView) {
                EmptyView()
            }
            VStack(alignment: .leading) {
                HStack {
                    Text("Wish List")
                        .font(.title)
                        .bold()
                    Spacer()
                }
                ScrollView {
                    ForEach(wishlistManager.wishlist.reversed(), id: \.id) { item in
                        WishListItem(showNextView: $showNextView, current: $current, product: WishlistViewModel.getProduct(productID: item.productId), id: item.id)
                            .environmentObject(wishlistManager)
                    }
                }
            }
            .padding()
        }
        .onAppear(perform: {
            wishlistManager.getWishlist(userId: "Rando")
        })
        .navigationTitle("")
        .navigationBarHidden(true)
    }
}

struct WishListPageSVC_Previews: PreviewProvider {
    static var previews: some View {
        WishListPageSVC()
            .environmentObject(CartManager())
            .environmentObject(HistoryManager())
            .environmentObject(OrdersManager())
            .environmentObject(CommentsManager())
            .environmentObject(WishlistManager())
    }
}
