//
//  CheckoutPageHelpers.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/11/22.
//

import Foundation
import SwiftUI

func validateFields(checkoutDetailsObj: CheckoutDetailsObj) throws {
    
    guard !checkoutDetailsObj.name.isEmpty else {
        throw CheckoutErrors.fieldIsEmpty
    }
    
    guard !checkoutDetailsObj.email.isEmpty else {
        throw CheckoutErrors.fieldIsEmpty
    }
    
    guard !checkoutDetailsObj.phoneNumber.isEmpty else {
        throw CheckoutErrors.fieldIsEmpty
    }
    
    guard !checkoutDetailsObj.address.isEmpty else {
        throw CheckoutErrors.fieldIsEmpty
    }
    
    guard !checkoutDetailsObj.zip.isEmpty else {
        throw CheckoutErrors.fieldIsEmpty
    }
    
    guard !checkoutDetailsObj.city.isEmpty else {
        throw CheckoutErrors.fieldIsEmpty
    }
    
    guard !checkoutDetailsObj.country.isEmpty else {
        throw CheckoutErrors.fieldIsEmpty
    }
    
}

func messageBox(title: String, msg: String) -> Alert {
    return Alert(title: Text(title), message: Text(msg), dismissButton: .default(Text("Dismiss")))
}
