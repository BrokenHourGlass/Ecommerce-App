//
//  WishListItem.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/14/22.
//

import SwiftUI

struct WishListItem: View {
    var product: NewProduct
    
    var body: some View {
        HStack {
            Image(product.productIMG)
                .resizable()
                .frame(maxWidth: 100, maxHeight: 100)
                .scaledToFill()
                .clipped()
                .listRowInsets(EdgeInsets())
            VStack(alignment: .leading, spacing: 10) {
                Text(product.name)
                    .bold()
                Text(product.description)
                    .fontWeight(.light)
                    .lineLimit(2)
                    .foregroundColor(Color.black)
                Text("$ \(product.price)")
                    .foregroundColor(Color.black)
            }
            Spacer()
            Button(action: {}) {
                Image(systemName: "star.fill")
                    .foregroundColor(Color.yellow)
            }
            .frame(width: 50)
            
        }
        .frame(maxHeight: 200)
    }
}

struct WishListItem_Previews: PreviewProvider {
    static var previews: some View {
        WishListItem(product: products[0])
    }
}
