//
//  LoginAction.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/15/22.
//

import SwiftUI

struct LoginAction: View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
            }
            Button (action: {}) {
                Text("Continue")
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

struct LoginAction_Previews: PreviewProvider {
    static var previews: some View {
        LoginAction()
    }
}
