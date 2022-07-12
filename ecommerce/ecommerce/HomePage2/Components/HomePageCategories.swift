//
//  HomePageCategories.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/5/22.
//

import SwiftUI

struct HomePageCategories: View {
    @EnvironmentObject var cartManager: CartManager
    @EnvironmentObject var historyManager: HistoryManager
    @EnvironmentObject var ordersManager: OrdersManager
    @EnvironmentObject var commentsManager: CommentsManager
    
    @State var showNextView = false
    @State var current = 0
    
    var title: String
    var description: String
    var fgColor: Color
    var bgColor: Color
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.title)
                .bold()
                .padding([.trailing], 15)
            Text(description)
                .font(.title3)
                .padding([.trailing], 15)
            NavigationLink(destination: ProductSVC(product: products[current]).environmentObject(cartManager).environmentObject(historyManager).environmentObject(ordersManager).environmentObject(commentsManager), isActive: $showNextView) {
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
        .foregroundColor(fgColor)
        .background(bgColor)
    }
}

struct HomePageCategories_Previews: PreviewProvider {
    static var previews: some View {
        HomePageCategories(title: "title", description: "description", fgColor: Color.white, bgColor: Color.blue)
            .environmentObject(CartManager())
            .environmentObject(HistoryManager())
            .environmentObject(OrdersManager())
            .environmentObject(CommentsManager())
    }
}
