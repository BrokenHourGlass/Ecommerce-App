//
//  GoToSignup.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/16/22.
//

import SwiftUI

struct GoToSignup: View {
    
    @State var showNextView = false
    
    var body: some View {
        Section {
            NavigationLink(destination: SignupPage2SVC().navigationTitle("").navigationBarHidden(true), isActive: $showNextView) {
                EmptyView()
            }
            Button (action: {
                showNextView = true
                print("Go to login")
            }) {
                Text("Create Account")
                    .bold()
                    .padding()
                    .frame(maxWidth: .infinity)
                    .border(Color.blue.opacity(0.5))
            }
            .foregroundColor(Color.white)
            .background(Color.blue.opacity(0.5))
            .cornerRadius(15)
        }
    }
}

