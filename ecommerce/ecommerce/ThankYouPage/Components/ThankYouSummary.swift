//
//  ThankYouSummary.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/3/22.
//

import SwiftUI

struct ThankYouSummary: View {
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        ScrollView {
            LazyVStack {
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
            }
        }
    }
}

struct ThankYouSummary_Previews: PreviewProvider {
    static var previews: some View {
        ThankYouSummary()
    }
}
