//
//  CategoryFeatured.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/3/22.
//

import SwiftUI

struct CategoryFeatured: View {
    @EnvironmentObject var cartManager: CartManager
    @EnvironmentObject var historyManager: HistoryManager
    @EnvironmentObject var ordersManager: OrdersManager
    @EnvironmentObject var commentsManager: CommentsManager
    @EnvironmentObject var wishlistManager: WishlistManager
    
    @State var showNextView = false
    @State var current: NewProduct = CategoryViewModel.placeholderProduct()
    
    let rows: [GridItem] = [GridItem(.flexible())]
    var filteredProducts: [NewProduct]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("FEATURED")
                .font(.title2)
                .bold()
            NavigationLink(destination: ProductSVC(product: current).environmentObject(cartManager).environmentObject(historyManager).environmentObject(ordersManager).environmentObject(commentsManager).environmentObject(wishlistManager), isActive: $showNextView) {
                EmptyView()
            }
            ScrollView(.horizontal) {
                LazyHGrid(rows: rows) {
                    ForEach(filteredProducts, id: \.id) { product in
                        Button(action: {
                            current = product
                            showNextView = true
                        }) {
                            HStack {
                                VStack {
                                    Image(product.productIMG)
                                        .resizable()
                                        .frame(maxWidth: 100, maxHeight: 100)
                                        .scaledToFill()
                                        .clipped()
                                        .listRowInsets(EdgeInsets())
                                        .cornerRadius(10)
                                    Text(product.name)
                                        .bold()
                                        .font(.caption2)
                                }
                                .frame(width: 100)
                            }
                        }
                    }
                }
            }
            .padding([.top], 10)
        }
        .padding([.leading], 17)
        
    }
}

struct CategoryFeatured_Previews: PreviewProvider {
    static var previews: some View {
        CategoryFeatured(filteredProducts: [])
            .environmentObject(CartManager())
            .environmentObject(HistoryManager())
            .environmentObject(OrdersManager())
            .environmentObject(CommentsManager())
            .environmentObject(WishlistManager())
    }
}
