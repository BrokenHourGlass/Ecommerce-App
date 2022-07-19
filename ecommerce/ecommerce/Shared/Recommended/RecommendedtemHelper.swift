//
//  RecommendedItemHelper.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/1/22.
//

import SwiftUI

struct RecommendedItemHelper: View {
    @EnvironmentObject var cartManager: CartManager
    @EnvironmentObject var historyManager: HistoryManager
    @EnvironmentObject var ordersManager: OrdersManager
    @EnvironmentObject var commentsManager: CommentsManager
    @EnvironmentObject var wishlistManager: WishlistManager
    @EnvironmentObject var services: Services
    
    @State var showNextView = false
    
    var recommended: NewRecommended
    
    var body: some View {
        NavigationLink(destination: ProductSVC(product: RecommendedHelperFuncs.getProduct(productName: recommended.name)).environmentObject(cartManager).environmentObject(historyManager).environmentObject(ordersManager).environmentObject(commentsManager).environmentObject(wishlistManager).environmentObject(services), isActive: $showNextView) {
            EmptyView()
        }
        VStack {
            VStack(spacing: 15) {
                if (!recommended.img.isEmpty) {
                    Image(recommended.img)
                        .resizable()
                        .frame(width: 200, height: 200)
                } else {
                    Section {
                        Text("No image available")
                            .font(.title2)
                            .foregroundColor(Color.white)
                    }
                    .frame(width: 200, height: 200)
                    .background(Color.gray)
                    .cornerRadius(15)
                }
                if (!recommended.name.isEmpty) {
                    Text(recommended.name)
                        .font(.title2)
                        .bold()
                    
                } else {
                    Text("Not available")
                        .font(.title2)
                        .bold()
                }
            }
            if (!recommended.img.isEmpty) {
                ButtonA(title: "SEE PRODUCT", showNextView: $showNextView)
                    .padding([.top], 15)
            }
        }
        .frame(width: 250)
    }
}
