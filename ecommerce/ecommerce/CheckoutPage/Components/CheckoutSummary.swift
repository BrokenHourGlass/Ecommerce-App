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
    
    private var columns = [GridItem(.flexible())]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("SUMMARY")
            ScrollView {
                LazyVGrid(columns: columns) {
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
                    NavigationLink(destination: ThankYouSVC().environmentObject(cartManager).onAppear{
                        let newOrder = OrdersViewModel.createNewOrder()
                        
                        ordersManager.addToHistory(order: newOrder)
                        CDOrdersHelper.cdOrdersHelper.addOrder(orderObj: newOrder)
                    }) {
                        Section {
                            Text("CONTINUE & PAY")
                                .padding()
                                .frame(maxWidth: .infinity)
                                .border(Color.red)
                        }
                        .foregroundColor(Color.white)
                        .background(Color.red)
                    }
                }
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
