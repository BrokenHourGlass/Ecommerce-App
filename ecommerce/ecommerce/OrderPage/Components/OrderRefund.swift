//
//  OrderRefund.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/14/22.
//

import SwiftUI

struct OrderRefund: View {
    
    var body: some View {
        VStack {
            Button(action: {
                print("refund requested")
            }) {
                Text("Refund")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .border(Color.red)
            }
            .foregroundColor(Color.white)
            .background(Color.red)
        }
        .padding()
    }
    
}

struct OrderRefund_Previews: PreviewProvider {
    static var previews: some View {
        OrderRefund()
    }
}
