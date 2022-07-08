//
//  OrderHistorySVC.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/8/22.
//

import SwiftUI

struct OrderHistorySVC: View {
    @EnvironmentObject var cartManager: CartManager
    @EnvironmentObject var historyManager: HistoryManager
    
    var body: some View {
        VStack {
            NavigationBar()
                .environmentObject(cartManager)
            ScrollView {
                LazyVStack {
                    SignupModal()
                    Text("Order History")
                        .font(.title2)
                        .bold()
                    OrderHistoryList()
                }
            }
            Spacer()
        }
    }
}

struct OrderHistorySVC_Previews: PreviewProvider {
    static var previews: some View {
        OrderHistorySVC()
            .environmentObject(CartManager())
            .environmentObject(HistoryManager())
    }
}
