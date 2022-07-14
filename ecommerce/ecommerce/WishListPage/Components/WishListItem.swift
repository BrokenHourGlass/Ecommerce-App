//
//  WishListItem.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/14/22.
//

import SwiftUI

struct WishListItem: View {
    
    @Binding var showNextView: Bool
    @Binding var current: NewProduct 
    var product: NewProduct
    
    var body: some View {
        HStack {
            Button(action: {
                current = product
                showNextView = true
            }) {
                Image(product.productIMG)
                    .resizable()
                    .frame(maxWidth: 100, maxHeight: 100)
                    .scaledToFill()
                    .clipped()
                    .listRowInsets(EdgeInsets())
                    .cornerRadius(15)
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
            }
            Spacer()
            Button(action: {
                print("button pressed")
            }) {
                Image(systemName: "star.fill")
                    .foregroundColor(Color.yellow)
            }
            .frame(width: 50)
            
        }
        .frame(maxHeight: 200)
    }
}

//struct WishListItem_Previews: PreviewProvider {
//    static var previews: some View {
//        WishListItem(showNextView: .constant(false), current: .constant(value: CategoryViewModel.placeholderProduct()), product: products[0])
//    }
//}
