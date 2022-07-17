//
//  SignupPage2SVC.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/15/22.
//

import SwiftUI

struct SignupPage2SVC: View {
    
    var body: some View {
        VStack(alignment: .leading) {
            NavigationBack()
            Spacer()
            ScrollView {
                HStack {
                    Text("Sign up")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)
                    Spacer()
                }
                .padding(.horizontal, 15)
                SignupPageModal()
            }
            .navigationTitle("")
            .navigationBarHidden(true)
            Spacer()
        }
        .padding()
        .background(Color.black)
    }
}
