//
//  CheckoutSVC.swift
//  ecommerce
//
//  Created by Vincent Salinas on 6/30/22.
//

import SwiftUI

struct CheckoutSVC: View {
    @EnvironmentObject var cartManager: CartManager
    @EnvironmentObject var ordersManager: OrdersManager
    
    var body: some View {
        VStack {
            NavigationBar()
                .environmentObject(cartManager)
                .environmentObject(ordersManager)
            NavigationBack()
            CheckoutForm()
                .environmentObject(cartManager)
                .environmentObject(ordersManager)
        }
        .navigationTitle("")
        .navigationBarHidden(true)
        
    }
}


