//
//  SignupPassword.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/18/22.
//

import SwiftUI

struct SignupPassword: View {
    var placeholder: String
    
    @Binding var value: String
    
    var body: some View {
        SecureField(placeholder, text: $value)
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.gray, lineWidth: 1)
            )
            .background(Color.white)
    }
}
