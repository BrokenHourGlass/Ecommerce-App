//
//  OrderItemSVC.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/8/22.
//

import SwiftUI

struct OrderItemSVC: View {
    
    var it: CartItem
    
    var body: some View {
        HStack {
            Image(it.item.cartIMG)
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(15)
            VStack(alignment: .leading, spacing: 5) {
                Text(it.item.name)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .lineLimit(1)
                Text("$ \(it.unitPrice)")
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

//struct OrderItemSVC_Previews: PreviewProvider {
//    static var previews: some View {
//        OrderItemSVC()
//    }
//}
