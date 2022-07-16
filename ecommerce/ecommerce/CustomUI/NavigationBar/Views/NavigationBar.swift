//
//  NavigationBar.swift
//  ecommerce
//
//  Created by Vincent Salinas on 6/30/22.
//

import SwiftUI

struct NavigationBar: View {
    @EnvironmentObject var cartManager: CartManager
    @EnvironmentObject var ordersManager: OrdersManager
    
    var body: some View {
        HStack {
            Button {
                print("remove")
            } label: {
                Image(systemName: "line.3.horizontal")
                    .foregroundColor(Color.white)
            }
            Spacer()
            Text("Pick'n'Pay")
                .foregroundColor(.white)
                .font(.title)
                .bold()
            Spacer()
            NavigationLink(destination: ShoppingCartSVC().environmentObject(cartManager).environmentObject(ordersManager)) {
                Image(systemName: "cart")
                    .foregroundColor(Color.white)
            }
        }
        .padding([.leading, .trailing], 27)
        .padding([.top, .bottom], 20)
        .background(Color.black)
    }
}
