//
//  CheckoutSummary.swift
//  ecommerce
//
//  Created by Vincent Salinas on 6/30/22.
//

import SwiftUI

struct CheckoutSummary: View {
    var modelData = products
    
    private var columns = [GridItem(.flexible())]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("SUMMARY")
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(0..<modelData.count) { index in
                        HStack {
                            Image(modelData[index].cartIMG)
                                .resizable()
                                .frame(width: 100, height: 100)
                            VStack(alignment: .leading, spacing: 5) {
                                Text(modelData[index].name)
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                                    .lineLimit(1)
                                Text("$ \(modelData[index].price)")
                            }
                            Spacer()
                        }
                    }
                    CheckoutDetails()
                    ButtonA(title: "CONTINUE & PAY")
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
