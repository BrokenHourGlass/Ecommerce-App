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
        VStack(alignment: .leading) {
            NavigationBar()
                .environmentObject(cartManager)
                .navigationTitle("")
                .navigationBarHidden(true)
            SignupModal()
            Group {
                Text("Order History")
                    .font(.title2)
                    .bold()
                OrderHistoryList()
            }
            .padding(.horizontal, 17)
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
