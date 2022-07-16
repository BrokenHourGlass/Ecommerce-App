//
//  LoginAction.swift
//  ecommerce
//
//  Created by liban 

import SwiftUI

struct LoginAction: View {
    
    @Binding var email: String
    @Binding var password: String
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
            }
            VStack(spacing: 10) {
                Button (action: {
                    validate()
                }) {
                    Text("Continue")
                        .bold()
                        .padding()
                        .frame(maxWidth: .infinity)
                        .border(Color.green)
                }
                .foregroundColor(Color.white)
                .background(Color.green)
                .cornerRadius(15)
                GoToSignup()
            }
        }
        .padding([.top], 15)
    }
    
    func validate(){
        
        if checkInput(text: email) && checkInput(text: password){
            //check if user is registered
            if !CDUsersHelper.cdUsersHelper.isUserRegistered(email: email){
                print("please sign up first")
            }else{
                //check if password is correct
                let correctpassword = CDUsersHelper.cdUsersHelper.getOne(email: email).password
                let uzer = CDUsersHelper.cdUsersHelper.getOne(email: email)
                if password == correctpassword{
                    
                    print("you entered the correct password")
                    
                } else{
                    print(" please try entering the correct password")
                }
            }
        }
        else{
            print("please input username and password")
        }
    }
    
    func checkInput(text: String) -> Bool{
        var isValid = false
        if !text.isEmpty && text != "" && text != nil{
            isValid = true
        }
        return isValid
    }
    
}

