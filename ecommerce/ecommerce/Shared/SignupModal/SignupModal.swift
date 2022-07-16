//
//  SignupModal.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/6/22.
//

import SwiftUI

struct SignupModal: View {
    var loggedIn = userDefaults.bool(forKey: "isLoggedIn")
    
    var body: some View {
        VStack(alignment: .leading) {
            if (!loggedIn) {
                VStack(alignment: .leading) {
                    Text("Sign in for the best experience")
                        .font(.title2)
                        .fontWeight(.light)
                    NavigationLink(destination: LoginPage2SVC()) {
                        Text("Sign in securely")
                            .fontWeight(.light)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .border(Color.orange)
                    }
                    .foregroundColor(Color.black)
                    .background(Color.orange)
                }
                .padding()
            } else {
                EmptyView()
            }
        }
    }
}
