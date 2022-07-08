//
//  CategorySVC.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/3/22.
//

import SwiftUI

struct CategorySVC: View {
    @EnvironmentObject var cartManager: CartManager
    @EnvironmentObject var historyManager: HistoryManager
    @EnvironmentObject var ordersManager: OrdersManager
    
    let columns: [GridItem] = [GridItem(.flexible())]
    
    var body: some View {
        VStack {
            NavigationBar()
                .environmentObject(cartManager)
                .environmentObject(ordersManager)
            NavigationBack()
            ScrollView {
                LazyVGrid(columns: columns) {
                    SignupModal()
                    VStack(spacing: 20) {
                        CategoryHero()
                        CategoryFeatured()
                            .environmentObject(cartManager)
                            .environmentObject(historyManager)
                .environmentObject(ordersManager)
                        CategoryResults()
                            .environmentObject(cartManager)
                            .environmentObject(historyManager)
                .environmentObject(ordersManager)
                    }
                }
            }
        }
        .navigationTitle("")
        .navigationBarHidden(true)
    }
}

struct CategorySVC_Previews: PreviewProvider {
    static var previews: some View {
        CategorySVC()
            .environmentObject(CartManager())
            .environmentObject(HistoryManager())
            .environmentObject(OrdersManager())
    }
}
