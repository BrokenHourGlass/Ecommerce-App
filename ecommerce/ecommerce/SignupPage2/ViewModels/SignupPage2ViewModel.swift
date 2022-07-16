//
//  SignupPage2ViewModel.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/15/22.
//

import Foundation

class SignupPage2ViewModel {
    
    static func validateCredentials(credentials: SignupCredentials) -> (Bool, String) {
        var result = false
        var msg = ""
        
        do {
            try credentialsValidation(credentialsObj: credentials)
            result = true
        } catch SignupErrors.invalidFirstname {
            msg = "Invalid firstname"
        } catch SignupErrors.invalidLastname {
            msg = "Invalid lastname"
        } catch SignupErrors.invalidEmail {
            msg = "Invalid email"
        } catch SignupErrors.invalidPassword {
            msg = "Invalid password"
        } catch SignupErrors.invalidConfirmPassword {
            msg = "Invalid confirm password"
        } catch SignupErrors.invalidMobileNumber {
            msg = "Invalid mobile number"
        } catch SignupErrors.passwordsDoNotMatch {
            msg = "Passwords do not match"
        } catch {
            msg = "Unknown error detected"
        }
        return (result, msg)
    }
    
}

enum SignupErrors: Error {
    case invalidFirstname
    case invalidLastname
    case invalidEmail
    case invalidPassword
    case invalidConfirmPassword
    case invalidMobileNumber
    case passwordsDoNotMatch
}
