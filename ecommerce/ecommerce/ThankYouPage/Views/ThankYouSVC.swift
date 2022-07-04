//
//  ThankYouSVC.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/3/22.
//

import SwiftUI

struct ThankYouSVC: View {
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        VStack(alignment: .leading) {
            ThankYouImage()
            ThankYouMessage()
            ThankYouSummary()
                .environmentObject(cartManager)
            ThankYouTotal()
                .environmentObject(cartManager)
            BackToHomePage()
        }
        .padding([.leading, .trailing], 30)
        .navigationTitle("")
        .navigationBarHidden(true)
    }
}

struct ThankYouSVC_Previews: PreviewProvider {
    static var previews: some View {
        ThankYouSVC()
    }
}
