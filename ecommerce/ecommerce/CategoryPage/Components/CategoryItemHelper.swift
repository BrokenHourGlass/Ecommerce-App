//
//  CategoryItemHelper.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/3/22.
//

import SwiftUI

struct CategoryItemHelper: View {
    var product: NewProduct
    
    var body: some View {
            HStack {
                Image(product.productIMG)
                    .resizable()
                    .frame(maxWidth: 200, maxHeight: 200)
                    .scaledToFill()
                    .clipped()
                    .listRowInsets(EdgeInsets())
                VStack(alignment: .leading, spacing: 10) {
                    Text(product.name)
                        .bold()
                    Text("$ \(product.price)")
                        .font(.title)
                    Text(product.description)
                        .fontWeight(.light)
                        .lineLimit(2)
                }
                Spacer()
                
            }
            .frame(maxHeight: 200)
    }
}

struct CategoryItemHelper_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemHelper(product: products[0])
    }
}
