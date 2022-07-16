//
//  UserModel.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/15/22.
//

import Foundation

class UserModal {
    var name: String
    var email: String
    var password: String
    var mobileNumber: String
    
    init(name: String, email: String, password: String, mobileNumber: String) {
        self.name = name
        self.email = email
        self.password = password
        self.mobileNumber = mobileNumber
    }
}
