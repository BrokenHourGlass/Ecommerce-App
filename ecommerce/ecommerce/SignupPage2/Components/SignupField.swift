//
//  SignupField.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/15/22.
//

import SwiftUI

struct SignupField: View {
    
    var placeholder: String
    
    @Binding var value: String
    
    var body: some View {
        TextField(placeholder, text: $value)
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.gray, lineWidth: 1)
            )
            .background(Color.white)
    }
}
