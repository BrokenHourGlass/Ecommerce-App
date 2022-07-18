//
//  LoginPageViewModel.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/16/22.
//

import Foundation

class LoginPageViewModel {
    static func setUserDefaults(user: PNPUser) {
        userDefaults.set(user.userId, forKey: "userId")
        userDefaults.set(user.firstname, forKey: "firstname")
        userDefaults.set(true, forKey: "isLoggedIn")
    }
    
    static func resetUserDefaults() {
        userDefaults.set("", forKey: "userId")
        userDefaults.set("", forKey: "firstname")
        userDefaults.set(false, forKey: "isLoggedIn")
    }
}

