//
//  ThankYouTotal.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/3/22.
//

import SwiftUI

struct ThankYouTotal: View {
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 15) {
                Text("GRAND TOTAL")
                    .foregroundColor(Color.gray)
                Text("$ \(cartManager.total)")
                    .font(.title2)
                    .bold()
                    .foregroundColor(Color.white)
            }
            Spacer()
        }
        .padding(27)
        .background(Color.black)
        .cornerRadius(5)
    }
}

struct ThankYouTotal_Previews: PreviewProvider {
    static var previews: some View {
        ThankYouTotal()
    }
}
