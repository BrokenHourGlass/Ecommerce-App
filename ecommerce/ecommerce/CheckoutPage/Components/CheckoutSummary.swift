//
//  CheckoutSummary.swift
//  ecommerce
//
//  Created by Vincent Salinas on 6/29/22.
//

import SwiftUI

struct CheckoutSummary: View {
    @EnvironmentObject var cartManager: CartManager
    
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
                        }
                    }
                    CheckoutDetails()
                        .environmentObject(cartManager)
                    NavigationLink(destination: ThankYouSVC().environmentObject(cartManager)) {
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
    }
}
