//
//  Helpers.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/15/22.
//

import Foundation

func credentialsValidation(credentialsObj: SignupCredentials) throws {
    
    guard !credentialsObj.firstname.isEmpty else {
        throw SignupErrors.invalidFirstname
    }
    
    guard !credentialsObj.lastname.isEmpty else {
        throw SignupErrors.invalidLastname
    }
    
    guard !credentialsObj.email.isEmpty else {
        throw SignupErrors.invalidEmail
    }
    
    guard isValidEmail(credentialsObj.email) else {
        throw SignupErrors.invalidEmailFormat
    }
    
    guard !credentialsObj.password.isEmpty else {
        throw SignupErrors.invalidPassword
    }
    
    guard isValidPassword(credentialsObj.password) else {
        throw SignupErrors.invalidPasswordFormat
    }
    
    guard !credentialsObj.confirmPassword.isEmpty else {
        throw SignupErrors.invalidConfirmPassword
    }
    
    guard isValidPassword(credentialsObj.confirmPassword) else {
        throw SignupErrors.invalidPasswordFormat
    }
    
    guard credentialsObj.password == credentialsObj.confirmPassword else {
        throw SignupErrors.passwordsDoNotMatch
    }
    
    guard !credentialsObj.mobileNumber.isEmpty else {
        throw SignupErrors.invalidMobileNumber
    }
    
    
}

// validate email format
func isValidEmail(_ email: String) -> Bool {
    let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
    
    let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
    return emailPred.evaluate(with: email)
}

// validate password format
func isValidPassword(_ password: String) -> Bool {
    let passwordRegEx = "^(?=.*[A-Z])(?=.*[0-9])(?=.*[a-z]).{6,12}$"
    
    let passwordPred = NSPredicate(format:"SELF MATCHES %@", passwordRegEx)
    return passwordPred.evaluate(with: password)
}
