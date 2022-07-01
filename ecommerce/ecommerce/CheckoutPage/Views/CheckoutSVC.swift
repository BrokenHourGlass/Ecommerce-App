//
//  CheckoutSVC.swift
//  ecommerce
//
//  Created by Vincent Salinas on 6/30/22.
//

import SwiftUI

struct CheckoutSVC: View {
    var body: some View {
        VStack {
            NavigationBar()
            CheckoutForm()
        }
    }
}

struct CheckoutSVC_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutSVC()
    }
}
