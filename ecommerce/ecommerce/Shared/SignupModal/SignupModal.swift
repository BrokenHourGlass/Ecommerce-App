//
//  SignupModal.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/6/22.
//

import SwiftUI

struct SignupModal: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Sign in for the best experience")
                .font(.title2)
                .fontWeight(.light)
            NavigationLink(destination: TemporarySVC()) {
                Text("Sign in securely")
                    .fontWeight(.light)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .border(Color.orange)
            }
            .foregroundColor(Color.black)
            .background(Color.orange)
            NavigationLink(destination: TemporarySVC()) {
                Text("Create an account")
                    .fontWeight(.light)
            }
        }
        .padding()
    }
}

struct SignupModal_Previews: PreviewProvider {
    static var previews: some View {
        SignupModal()
    }
}
