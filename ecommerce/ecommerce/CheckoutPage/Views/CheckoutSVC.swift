//
//  CheckoutSVC.swift
//  ecommerce
//
//  Created by Vincent Salinas on 6/30/22.
//

import SwiftUI

struct CheckoutSVC: View {
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        VStack {
            NavigationBar()
                .environmentObject(cartManager)
            CheckoutForm()
                .environmentObject(cartManager)
        }
        .navigationTitle("")
        .navigationBarHidden(true)
    }
}

struct CheckoutSVC_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutSVC()
    }
}
