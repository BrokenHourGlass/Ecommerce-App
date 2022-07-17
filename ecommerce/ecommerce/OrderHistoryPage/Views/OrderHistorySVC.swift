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
            Text("Order History")
                .font(.title2)
                .bold()
                .padding(.horizontal)
                .padding(.top)
            OrderHistoryList()
                .environmentObject(ordersManager)
                .padding(.horizontal)
            Spacer()
        }
    }
}


