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
    @EnvironmentObject var ordersManager: OrdersManager
    @EnvironmentObject var commentsManager: CommentsManager
    @EnvironmentObject var wishlistManager: WishlistManager
    @EnvironmentObject var services: Services
    
    @State var showNextView = false
    @State var current: NewProduct = HomePageViewModel.placeHolderProduct()
    
    var fgColor: Color
    var bgColor: Color
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Checkout these summer essentials!")
                .font(.title)
                .bold()
            Text("Up to 50% off marked prices")
                .font(.title3)
            NavigationLink(destination: ProductSVC(product: current).environmentObject(cartManager).environmentObject(historyManager).environmentObject(ordersManager).environmentObject(commentsManager).environmentObject(wishlistManager).environmentObject(services), isActive: $showNextView) {
                EmptyView()
            }
            ScrollView(.horizontal) {
                LazyHStack {
                    ForEach(services.productData) { product in
                        Button(action: {
                            current = product
                            showNextView = true
                        }) {
                            HomePageProduct(product: product)
                        }
                    }
                }
            }
            .onAppear{
                services.getProductData()
            }
            .refreshable {
                services.getProductData()
            }
            .padding([.top], 10)
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
            .environmentObject(OrdersManager())
            .environmentObject(CommentsManager())
            .environmentObject(WishlistManager())
    }
}
