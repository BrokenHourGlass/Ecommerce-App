//
//  ShoppingCartSVC.swift
//  ecommerce
//
//  Created by Vincent Salinas on 6/29/22.
//

import SwiftUI

struct ShoppingCartSVC: View {
    var modelData = ModelData()
    
    var body: some View {
        
        VStack {
            HStack {
                Text("CART \(modelData.products.count)")
                    .font(.title2)
                Spacer()
                Button("Remove All") {
                    
                }
                .font(.title2)
            }
            .padding([.leading, .trailing], 27)
            .padding([.top, .bottom], 15)
            List {
                ForEach(modelData.products) { product in
                    HStack(spacing: 15) {
                        product.img
                            .resizable()
                            .frame(width: 100, height: 100)
                        VStack(alignment: .leading, spacing: 5) {
                            Text(product.name)
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                                .lineLimit(1)
                            Text("$ \(product.price)")
                        }
                        AddRemoveItem()
                    }
                }
            }
            VStack(spacing: 10) {
                HStack {
                    Spacer()
                    Text("TOTAL")
                        .font(.title2)
                        .fontWeight(.light)
                        .lineLimit(1)
                    Text("$ \(getTotal(products: modelData.products))")
                        .font(.title2)
                }
                HStack {
                    Spacer()
                    Button("CHECKOUT") {
                        
                    }
                    .font(.title2)
                }
            }
            .padding([.leading, .top, .trailing, .bottom], 27)
        }
        
    }
    
}

struct ShoppingCartSVC_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingCartSVC()
    }
}
