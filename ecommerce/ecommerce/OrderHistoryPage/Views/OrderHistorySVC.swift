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
    @EnvironmentObject var ordersManager: OrdersManager
    
    var body: some View {
        VStack(alignment: .leading) {
            NavigationBar()
                .environmentObject(cartManager)
                .environmentObject(ordersManager)
                .navigationTitle("")
                .navigationBarHidden(true)
            SignupModal()
            Group {
                Text("Order History")
                    .font(.title2)
                    .bold()
                OrderHistoryList()
                    .environmentObject(ordersManager)
            }
            .padding()
            Spacer()
        }
    }
}


