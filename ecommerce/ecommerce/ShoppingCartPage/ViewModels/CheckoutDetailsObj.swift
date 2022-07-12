//
//  CheckoutDetailsObj.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/11/22.
//

import Foundation

class CheckoutDetailsObj {
    var name: String
    var email: String
    var phoneNumber: String
    var address: String
    var zip: String
    var city: String
    var country: String
    
    init(name: String, email: String, phoneNumber: String, address: String, zip: String, city: String, country: String) {
        self.name = name
        self.email = email
        self.phoneNumber = phoneNumber
        self.address = address
        self.zip = zip
        self.city = city
        self.country = country
    }
}
