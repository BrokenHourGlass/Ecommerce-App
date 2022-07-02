//
//  ShoppingCartSVC.swift
//  ecommerce
//
//  Created by Vincent Salinas on 6/29/22.
//

import SwiftUI

struct ShoppingCartSVC: View {
//    var modelData = ModelData()
    var modelData = products
    
    private var gridItemLayout = [GridItem(.flexible())]
    
    var body: some View {
        VStack {
            NavigationBar()
            HStack {
                Text("CART \(modelData.count)")
                Spacer()
                Button("Remove All") {
                    
                }
            }
            .padding([.leading, .trailing], 27)
            .padding([.top, .bottom], 15)
            ScrollView(.vertical) {
                LazyVGrid(columns: gridItemLayout) {
                    ForEach(0..<modelData.count) { index in
                        HStack(spacing: 15) {
                            Image(modelData[index].cartIMG)
                                .resizable()
                                .frame(width: 100, height: 100)
                            Spacer()
                            VStack(alignment: .leading, spacing: 5) {
                                Text(modelData[index].name)
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                                    .lineLimit(1)
                                Text("$ \(modelData[index].price)")
                            }
                            Spacer()
                            AddRemoveItem()
                        }
                    }
                }
            }
            .padding([.leading, .trailing], 24)
            VStack(spacing: 10) {
                HStack {
                    Spacer()
                    Text("TOTAL")
                        .fontWeight(.light)
                        .lineLimit(1)
                    Text("$ \(getTotal(products: modelData))")
                }
                HStack {
                    Spacer()
                    Button("CHECKOUT") {
                        
                    }
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
