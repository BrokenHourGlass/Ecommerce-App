//
//  SignupAction.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/15/22.
//

import SwiftUI

struct SignupAction: View {
    
    @Binding var firstname: String
    @Binding var lastname: String
    @Binding var email: String
    @Binding var password: String
    @Binding var confirmPassword: String
    @Binding var mobileNumber: String
    
    var body: some View {
        VStack {
            HStack {
                Text("By selecting Agree and continue below, I agree to Terms of Service and Privacy Policy")
                    .foregroundColor(Color.white)
                Spacer()
            }
            VStack(spacing: 10) {
                Button (action: {
                    CDUsersHelper.cdUsersHelper.addNewUser(userObj: UserModel(userId: UUID().uuidString, firstname: firstname, lastname: lastname, email: email, password: password, mobileNumber: mobileNumber))
                    
                    firstname = ""
                    lastname = ""
                    email = ""
                    password = ""
                    confirmPassword = ""
                    mobileNumber = ""
                    
                }) {
                    Text("Agree and continue")
                        .bold()
                        .padding()
                        .frame(maxWidth: .infinity)
                        .border(Color.green)
                }
                .foregroundColor(Color.white)
                .background(Color.green)
                .cornerRadius(15)
                GoToLogin()
                
            }
        }
        .padding([.top], 15)
    }
}

