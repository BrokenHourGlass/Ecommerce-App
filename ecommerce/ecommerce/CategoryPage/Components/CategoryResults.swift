//
//  CategoryResults.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/3/22.
//

import SwiftUI

struct CategoryResults: View {
    @EnvironmentObject var cartManager: CartManager
    @EnvironmentObject var historyManager: HistoryManager
    @EnvironmentObject var ordersManager: OrdersManager
    @EnvironmentObject var commentsManager: CommentsManager
    @EnvironmentObject var wishlistManager: WishlistManager
    @EnvironmentObject var services: Services
    
    @State var showNextView = false
    @State var current: NewProduct = HomePageViewModel.placeHolderProduct()
    
    let columns: [GridItem] = [GridItem(.flexible())]
    var filteredProducts: [NewProduct]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("RESULTS")
                .font(.title2)
                .bold()
            NavigationLink(destination: ProductSVC(product: current).environmentObject(cartManager).environmentObject(historyManager).environmentObject(ordersManager).environmentObject(commentsManager).environmentObject(wishlistManager).environmentObject(services), isActive: $showNextView) {
                EmptyView()
            }
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(filteredProducts, id: \.id) { productObj in
                        Button(action: {
                            current = productObj
                            showNextView = true
                        }) {
                            CategoryItemHelper(product: productObj)
                        }
                    }
                }
            }
            .padding([.top], 10)
        }
        .padding([.leading, .trailing], 17)
        .navigationTitle("")
        .navigationBarHidden(true)
    }
}

struct CategoryResults_Previews: PreviewProvider {
    static var previews: some View {
        CategoryResults(filteredProducts: [])
            .environmentObject(CartManager())
            .environmentObject(HistoryManager())
            .environmentObject(OrdersManager())
            .environmentObject(CommentsManager())
            .environmentObject(WishlistManager())
    }
}
