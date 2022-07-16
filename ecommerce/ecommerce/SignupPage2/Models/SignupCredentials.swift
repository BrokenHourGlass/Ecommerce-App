//
//  SignupCredentials.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/15/22.
//

import Foundation

class SignupCredentials {
    var firstname: String
    var lastname: String
    var email: String
    var password: String
    var confirmPassword: String
    var mobileNumber: String
    
    init(firstname: String, lastname: String, email: String, password: String, confirmPassword: String, mobileNumber: String) {
        self.firstname = firstname
        self.lastname = lastname
        self.email = email
        self.password = password
        self.confirmPassword = confirmPassword
        self.mobileNumber = mobileNumber
    }
}
