//
//  UserModel.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/15/22.
//

import Foundation

class UserModel {
    var userId: String
    var firstname: String
    var lastname: String
    var email: String
    var password: String
    var mobileNumber: String
    
    init(userId: String, firstname: String, lastname: String, email: String, password: String, mobileNumber: String) {
        self.userId = userId
        self.firstname = firstname
        self.lastname = lastname
        self.email = email
        self.password = password
        self.mobileNumber = mobileNumber
    }
}
