//
//  AccountPageSVC.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/16/22.
//

import SwiftUI

struct AccountPageSVC: View {
    @EnvironmentObject var cartManager: CartManager
    @EnvironmentObject var ordersManager: OrdersManager
    
    @State var showNextView = false
    @State var loggedIn = userDefaults.bool(forKey: "isLoggedIn")
    
    var body: some View {
        VStack {
            NavigationBar()
                .environmentObject(cartManager)
                .environmentObject(ordersManager)
            NavigationBack()
            Spacer()
            NavigationLink(destination: MainTabControllerSVC().navigationTitle("").navigationBarHidden(true), isActive: $showNextView) {
                EmptyView()
            }
            VStack {
                Button(action: {
                    showNextView = true
                    LoginPageViewModel.resetUserDefaults()
                }) {
                    Text("Log Out")
                        .fontWeight(.light)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .border(loggedIn ? Color.red : Color.gray.opacity(0.5))
                }
                .disabled(!loggedIn)
                .foregroundColor(Color.white)
                .background(loggedIn ? Color.red : Color.gray.opacity(0.5))
                
            }
            .padding()
            
        }
    }
}

