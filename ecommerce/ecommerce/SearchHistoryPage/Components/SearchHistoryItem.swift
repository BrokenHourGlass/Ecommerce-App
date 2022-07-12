//
//  SearchHistoryItem.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/7/22.
//

import SwiftUI

struct SearchHistoryItem: View {
    var product: NewProduct
    
    var body: some View {
        HStack {
            Image(product.cartIMG)
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
                .clipped()
                .listRowInsets(EdgeInsets())
                .cornerRadius(15)
            Spacer()
            VStack(alignment: .leading) {
                Text(product.name)
                    .bold()
                    .foregroundColor(Color.accentColor)
                Text(product.description)
                    .foregroundColor(Color.black)
                    .font(.caption)
                    .lineLimit(2)
                Text("$ \(product.price)")
                    .font(.caption)
                    .foregroundColor(Color.black)
            }
        }
    }
}

struct SearchHistoryItem_Previews: PreviewProvider {
    static var previews: some View {
        SearchHistoryItem(product: products[0])
    }
}
