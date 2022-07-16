//
//  SignupAction.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/15/22.
//

import SwiftUI

struct SignupAction: View {
    var body: some View {
        VStack {
            HStack {
                Text("By selecting Agree and continue below, I agree to Terms of Service and Privacy Policy")
                    .foregroundColor(Color.white)
                Spacer()
            }
            
            Button (action: {}) {
                Text("Agree and continue")
                    .bold()
                    .padding()
                    .frame(maxWidth: .infinity)
                    .border(Color.green)
            }
            .foregroundColor(Color.white)
            .background(Color.green)
            .cornerRadius(15)
        }
        .padding([.top], 15)
    }
}

