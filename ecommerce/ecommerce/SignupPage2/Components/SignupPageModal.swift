//
//  SignupPageModal.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/15/22.
//

import SwiftUI

struct SignupPageModal: View {
    
    @State var username = ""
    @State var email = ""
    @State var password = ""
    @State var confirmPassword = ""
    @State var mobileNumber = ""
    
    var body: some View {
        VStack {
            Text("Create an account to enjoy all the features!")
                .foregroundColor(Color.white)
                .fontWeight(.light)
            HStack {
                Spacer()
            }
            SignupField(placeholder: "Name", value: $username )
            SignupField(placeholder: "Email", value: $email)
            SignupField(placeholder: "Password", value: $password)
            SignupField(placeholder: "Confirm Password", value: $confirmPassword)
            SignupField(placeholder: "Mobile Number", value: $mobileNumber)
        }
        .padding()
        .background(Color.gray.opacity(0.25))
        .cornerRadius(15)
    }
}

struct SignupPageModal_Previews: PreviewProvider {
    static var previews: some View {
        SignupPageModal()
    }
}
