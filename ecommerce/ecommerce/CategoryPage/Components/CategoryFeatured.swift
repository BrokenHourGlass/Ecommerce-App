//
//  CategoryFeatured.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/3/22.
//

import SwiftUI

struct CategoryFeatured: View {
    var modelData = products
    
    let rows: [GridItem] = [GridItem(.fixed(100))]
    
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: rows) {
                ForEach(modelData, id: \.id) { product in
                    Image(product.productIMG)
                        .resizable()
                        .frame(maxWidth: 100, maxHeight: 100)
                        .scaledToFill()
                        .clipped()
                        .listRowInsets(EdgeInsets())
                }
                
            }
            
        }
    }
}

struct CategoryFeatured_Previews: PreviewProvider {
    static var previews: some View {
        CategoryFeatured()
    }
}
