//
//  CategoryFeatured.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/3/22.
//

import SwiftUI

struct CategoryFeatured: View {
    @EnvironmentObject var cartManager: CartManager
    
    var modelData = products
    
    let rows: [GridItem] = [GridItem(.flexible())]
    
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("FEATURED")
                .font(.title2)
                .bold()
            ScrollView(.horizontal) {
                LazyHGrid(rows: rows) {
                    ForEach(modelData, id: \.id) { product in
                        NavigationLink(destination: ProductSVC(product: product).environmentObject(cartManager)) {
                            HStack {
                                VStack {
                                    Image(product.productIMG)
                                        .resizable()
                                        .frame(maxWidth: 100, maxHeight: 100)
                                        .scaledToFill()
                                        .clipped()
                                        .listRowInsets(EdgeInsets())
                                        .cornerRadius(10)
                                    Text(product.name)
                                        .bold()
                                        .font(.caption2)
                                }
                                .frame(width: 100)
                            }
                        }
                    }
                }
            }
        }
        .padding([.leading], 17)
        
    }
}

struct CategoryFeatured_Previews: PreviewProvider {
    static var previews: some View {
        CategoryFeatured()
    }
}
