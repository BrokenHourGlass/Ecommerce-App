//
//  ShoppingCartSVC.swift
//  ecommerce
//
//  Created by Vincent Salinas on 6/29/22.
//

import SwiftUI

struct ShoppingCartSVC: View {
    @EnvironmentObject var cartManager: CartManager
    
    private var gridItemLayout = [GridItem(.flexible())]
    
    var body: some View {
        VStack {
            NavigationBar()
            NavigationBack()
            HStack {
                Text("CART (\(cartManager.items.count))")
                Spacer()
                Button("Remove All") {
                }
            }
            .padding([.leading, .trailing], 27)
            .padding([.top, .bottom], 5)
            ScrollView(.vertical) {
                LazyVGrid(columns: gridItemLayout) {
                    ForEach(cartManager.items, id: \.item.id) { it in
                        HStack(spacing: 15) {
                            Image(it.item.cartIMG)
                                .resizable()
                                .frame(width: 100, height: 100)
                            Spacer()
                            VStack(alignment: .leading, spacing: 5) {
                                Text(it.item.name)
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                                    .lineLimit(1)
                                Text("$ \(it.unitPrice)")
                            }
                            Spacer()
                            AddRemoveItem(it.quantity, item: it)
                                .environmentObject(cartManager)
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
                    NavigationLink(destination: CheckoutSVC().environmentObject(cartManager)) {
                        Section {
                            Text("CHECKOUT")
                                .padding()
                                .frame(maxWidth: .infinity)
                                .border(Color.red)
                        }
                        .foregroundColor(Color.white)
                        .background(Color.red)
                    }
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
    }
}
