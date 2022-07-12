//
//  CheckoutField.swift
//  ecommerce
//
//  Created by Vincent Salinas on 6/30/22.
//

import SwiftUI

struct CheckoutField: View {
    var title: String
    var placeholder: String
    
    @Binding var value: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
            TextField(placeholder, text: $value)
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray, lineWidth: 1)
                )
        }
    }
}

struct CheckoutField_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutField(title: "", placeholder: "title", value: .constant(""))
    }
}
