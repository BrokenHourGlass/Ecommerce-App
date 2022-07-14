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
    
    @State var showNextView = false
    @State var current: NewProduct = CategoryViewModel.placeholderProduct()
    
    var body: some View {
        VStack {
            NavigationBar()
                .environmentObject(cartManager)
                .environmentObject(ordersManager)
            NavigationLink(destination: ProductSVC(product: current).environmentObject(cartManager).environmentObject(historyManager).environmentObject(ordersManager).environmentObject(commentsManager), isActive: $showNextView) {
                EmptyView()
            }
            VStack(alignment: .leading) {
                Text("Wish List")
                    .font(.title)
                    .bold()
                ScrollView {
                    ForEach(products, id: \.id) { productObj in
                        Button(action: {
                            current = productObj
                            showNextView = true
                        }) {
                            WishListItem(product: productObj)
                        }
                    }
                }
            }
            .padding()
        }
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
        
    }
}
