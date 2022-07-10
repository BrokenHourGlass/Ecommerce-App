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
    
    @State var showNextView = false
    @State var current: Int = 0
    
    var fgColor: Color
    var bgColor: Color
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Checkout these summer essentials!")
                .font(.title)
                .bold()
            Text("Up to 50% off marked prices")
                .font(.title3)
            NavigationLink(destination: ProductSVC(product: products[current]).environmentObject(cartManager).environmentObject(historyManager).environmentObject(ordersManager), isActive: $showNextView) {
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
            .padding([.top], 15)
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
    }
}
