//
//  SearchHistorySVC.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/7/22.
//

import SwiftUI

struct SearchHistorySVC: View {
    @EnvironmentObject var cartManager: CartManager
    @EnvironmentObject var historyManager: HistoryManager
    @EnvironmentObject var ordersManager: OrdersManager
    
    var body: some View {
        VStack(alignment: .leading) {
            NavigationBar()
                .environmentObject(cartManager)
                .environmentObject(OrdersManager())
            SignupModal()
            Text("Recent Searches")
                .font(.title2)
                .bold()
                .padding(.horizontal)
            ScrollView {
                ForEach(historyManager.history.reversed(), id: \.id) { x in
                    SearchHistoryItem(product: x.product)
                }
            }
            .padding(.horizontal)
            Spacer()
        }
        .navigationTitle("")
        .navigationBarHidden(true)
    }
}


