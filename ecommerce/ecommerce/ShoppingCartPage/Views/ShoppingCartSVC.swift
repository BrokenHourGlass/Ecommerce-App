//
//  ShoppingCartSVC.swift
//  ecommerce
//
//  Created by Vincent Salinas on 6/29/22.
//

import SwiftUI

struct ShoppingCartSVC: View {
    @EnvironmentObject var cartManager: CartManager
    @EnvironmentObject var ordersManager: OrdersManager
    
    @State var showNextView = false
    
    var body: some View {
        VStack {
            NavigationBar()
                .environmentObject(cartManager)
                .environmentObject(ordersManager)
            NavigationBack()
            SignupModal()
            NavigationLink(destination: CheckoutSVC().environmentObject(cartManager).environmentObject(ordersManager), isActive: $showNextView) {
                EmptyView()
            }
            HStack {
                Text("CART (\(cartManager.items.count))")
                Spacer()
                Button("Remove All") {
                }
            }
            .padding([.leading, .trailing], 27)
            .padding([.top, .bottom], 5)
            ScrollView(.vertical) {
                ForEach(cartManager.items, id: \.item.id) { it in
                    HStack(spacing: 15) {
                        Image(it.item.cartIMG)
                            .resizable()
                            .frame(width: 100, height: 100)
                        VStack(alignment: .leading, spacing: 5) {
                            Text(it.item.name)
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                                .lineLimit(1)
                            Text("$ \(it.unitPrice)")
                        }
                        Spacer()
                        VStack(alignment: .leading) {
                            Text("\(it.quantity)x")
                                .foregroundColor(Color.gray)
                        }
                    }
                }
            }
            .padding([.leading, .trailing], 24)
            VStack(spacing: 10) {
                HStack {
                    Spacer()
                    Text("TOTAL:")
                        .font(.title2)
                        .bold()
                        .lineLimit(1)
                    Text("$ \(cartManager.getTotal())")
                        .font(.title2)
                }
                HStack {
                    Spacer()
                    Button(action: {
                        showNextView = ShoppingCartViewModel.cartIsNotEmpty(cart: cartManager.items)
                    }) {
                        Text("CHECKOUT")
                            .padding()
                            .frame(maxWidth: .infinity)
                            .border(Color.red)
                    }
                    .disabled(!ShoppingCartViewModel.cartIsNotEmpty(cart: cartManager.items))
                    .foregroundColor(Color.white)
                    .background(ShoppingCartViewModel.cartIsNotEmpty(cart: cartManager.items) ? Color.red : Color.gray)
                }
            }
            .padding([.leading, .top, .trailing, .bottom], 27)
            .navigationTitle("")
            .navigationBarHidden(true)
        }
    }
}

struct ShoppingCartSVC_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingCartSVC()
            .environmentObject(CartManager())
            .environmentObject(OrdersManager())
    }
}
