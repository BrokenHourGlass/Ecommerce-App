//
//  GoToLogin.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/15/22.
//

import SwiftUI

struct GoToLogin: View {
    
    @State var showNextView = false
    
    var body: some View {
        Section {
            NavigationLink(destination: LoginPage2SVC(), isActive: $showNextView) {
                EmptyView()
            }
            Button (action: {
                showNextView = true
                print("Go to login")
            }) {
                Text("Login")
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

struct GoToLogin_Previews: PreviewProvider {
    static var previews: some View {
        GoToLogin()
    }
}
