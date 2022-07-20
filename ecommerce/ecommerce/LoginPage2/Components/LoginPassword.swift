//
//  LoginPassword.swift
//  ecommerce
//
//  Created by Liban Abdinur on 7/19/22.
//

import Foundation
import SwiftUI

struct LoginPassword: View{
    
    var placeholderdos: String
    
    @Binding var valuedos: String
    
    
    var body: some View{
        
        SecureField(placeholderdos, text: $valuedos)
            .padding()
            .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color.gray, lineWidth: 1)
            )
            .background(Color.white)
        
        
    }
    
    
    
    
    
}
