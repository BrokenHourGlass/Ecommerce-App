//
//  CheckoutSummary.swift
//  ecommerce
//
//  Created by Vincent Salinas on 6/30/22.
//

import SwiftUI

struct CheckoutSummary: View {
    var modelData = ModelData()
    
    private var columns = [GridItem(.flexible())]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("SUMMARY")
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(0..<modelData.products.count) { index in
                        HStack {
                            modelData.products[index].img
                                .resizable()
                                .frame(width: 100, height: 100)
                            VStack(alignment: .leading, spacing: 5) {
                                Text(modelData.products[index].name)
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                                    .lineLimit(1)
                                Text("$ \(modelData.products[index].price)")
                            }
                            Spacer()
                        }
                    }
                    CheckoutDetails()
                    Button(action: {
                        print("Order Placed!")
                    }) {
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
}

struct CheckoutSummary_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutSummary()
    }
}
