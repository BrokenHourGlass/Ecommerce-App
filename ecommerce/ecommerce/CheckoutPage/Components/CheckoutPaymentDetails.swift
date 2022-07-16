//
//  CheckoutPaymentDetails.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/16/22.
//

import SwiftUI

struct CheckoutPaymentDetails: View {
    var title: String
    var placeholder: String
    
    @Binding var value: String
    @Binding var alt1: Bool
    @Binding var alt2: Bool
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
            TextField(placeholder, text: $value)
                .disabled(alt1 || alt2)
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray, lineWidth: 1)
                )
        }
    }
}

