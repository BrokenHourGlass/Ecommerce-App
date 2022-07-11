//
//  CheckoutSummary.swift
//  ecommerce
//
//  Created by Vincent Salinas on 6/29/22.
//

import SwiftUI

struct CheckoutSummary: View {
    @EnvironmentObject var cartManager: CartManager
    @EnvironmentObject var ordersManager: OrdersManager
    
    @State var showNextView = false
    
    var checkoutDetailsObj: CheckoutDetailsObj
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("SUMMARY")
            NavigationLink(destination: ThankYouSVC().environmentObject(cartManager).onAppear{
                let newOrder = OrdersViewModel.createNewOrder()
                ordersManager.addToHistory(order: newOrder)
                CDOrdersHelper.cdOrdersHelper.addOrder(orderObj: newOrder)
                CheckoutViewModel.storeOrderItems(orderId: newOrder.orderId, cart: cartManager.items)
            }, isActive: $showNextView) {
                EmptyView()
            }
            ScrollView {
                ForEach(cartManager.items, id: \.item.id) { it in
                    HStack {
                        Image(it.item.cartIMG)
                            .resizable()
                            .frame(width: 100, height: 100)
                        VStack(alignment: .leading, spacing: 5) {
                            Text(it.item.name)
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                                .lineLimit(1)
                            Text("$ \(it.item.price)")
                        }
                        Spacer()
                        VStack {
                            Text("\(it.quantity)x")
                                .foregroundColor(Color.gray)
                                .padding()
                        }
                    }
                }
                CheckoutDetails()
                    .environmentObject(cartManager)
                Button(action: {
                    showNextView = true
                }) {
                    Text("CONTINUE & PAY")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .border(Color.red)
                }
                .foregroundColor(Color.white)
                .background(Color.red)
            }
        }
        .navigationTitle("")
        .navigationBarHidden(true)
    }
}

struct CheckoutSummary_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutSummary()
            .environmentObject(CartManager())
            .environmentObject(OrdersManager())
    }
}
