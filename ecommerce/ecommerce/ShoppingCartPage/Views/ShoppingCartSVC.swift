//
//  ShoppingCartSVC.swift
//  ecommerce
//
//  Created by Vincent Salinas on 6/29/22.
//

import SwiftUI

struct ShoppingCartSVC: View {
    var modelData = ModelData()
    
    var filteredProducts: [Product] {
        modelData.products.filter { product in
            true
        }
    }
    
    var body: some View {
        
        VStack {
            HStack {
                Text("CART \(filteredProducts.count)")
                    .font(.title2)
                Spacer()
                Button("Remove All") {
                    
                }
                .font(.title2)
            }
            .padding([.leading, .trailing], 27)
            .padding([.top, .bottom], 15)
            List {
                ForEach(filteredProducts) { product in
                    HStack(spacing: 15) {
                        product.img
                            .resizable()
                            .frame(width: 100, height: 100)
                        VStack(alignment: .leading, spacing: 5) {
                            Text(product.name)
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                            Text("$ \(product.name)")
                        }
                    }
                }
            }
            VStack(spacing: 10) {
                HStack {
                    Spacer()
                    Text("TOTAL")
                        .font(.title2)
                        .fontWeight(.light)
                    Text("$ \(9999)")
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
