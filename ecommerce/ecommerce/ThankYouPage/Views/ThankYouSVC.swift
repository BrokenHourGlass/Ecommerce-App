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
        VStack(alignment: .leading, spacing: 20) {
            Spacer()
            ThankYouImage()
            ThankYouMessage()
            ThankYouSummary()
                .environmentObject(cartManager)
            ThankYouTotal()
                .environmentObject(cartManager)
            BackToHomePage()
            Spacer()
        }
        .padding([.leading, .trailing], 30)
        .padding([.top, .bottom], 25)
        .navigationTitle("")
        .navigationBarHidden(true)
    }
}

struct ThankYouSVC_Previews: PreviewProvider {
    static var previews: some View {
        ThankYouSVC()
    }
}
