//
//  CheckoutRadioField.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/15/22.
//

import SwiftUI

struct CheckoutRadioField: View {
    var label: String
    
    @Binding var value: Bool
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                ZStack {
                    Circle().fill(Color.black.opacity(0.2)).frame(width: 20, height: 20)
                    Circle().stroke(Color.black.opacity(0.2), lineWidth: 1).frame(width: 30, height: 30)
                }
                Text(label)
                Spacer()
            }
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.gray, lineWidth: 1)
            )
        }
    }
}
