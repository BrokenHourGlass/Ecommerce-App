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
                .padding([.leading, .trailing], 14)
            ScrollView {
                ForEach(historyManager.history.reversed(), id: \.id) { x in
                    SearchHistoryItem(product: x.product)
                }
            }
            .padding([.leading, .trailing], 14)
            Spacer()
        }
        .navigationTitle("")
        .navigationBarHidden(true)
    }
}

struct SearchHistorySVC_Previews: PreviewProvider {
    static var previews: some View {
        SearchHistorySVC()
            .environmentObject(CartManager())
            .environmentObject(HistoryManager())
            .environmentObject(OrdersManager())
    }
}
