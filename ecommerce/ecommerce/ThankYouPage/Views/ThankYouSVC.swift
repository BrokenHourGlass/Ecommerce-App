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
        VStack {
            ThankYouImage()
            ThankYouMessage()
            ThankYouSummary()
                .environmentObject(cartManager)
            ThankYouTotal()
            BackToHomePage()
        }
        .padding([.leading, .trailing], 30)
    }
}

struct ThankYouSVC_Previews: PreviewProvider {
    static var previews: some View {
        ThankYouSVC()
    }
}
