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
        throw SignupErrors.invalidFirstname
    }
    
    guard !credentialsObj.email.isEmpty else {
        throw SignupErrors.invalidFirstname
    }
    
    guard !credentialsObj.password.isEmpty else {
        throw SignupErrors.invalidFirstname
    }
    
    guard !credentialsObj.confirmPassword.isEmpty else {
        throw SignupErrors.invalidFirstname
    }
    
    guard !credentialsObj.mobileNumber.isEmpty else {
        throw SignupErrors.invalidFirstname
    }
    
}
