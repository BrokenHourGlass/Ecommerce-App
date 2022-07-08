//
//  CategoryFeatured.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/3/22.
//

import SwiftUI

struct CategoryFeatured: View {
    @EnvironmentObject var cartManager: CartManager
    @EnvironmentObject var historyManager: HistoryManager
    @EnvironmentObject var ordersManager: OrdersManager
    
    var modelData = products
    
    let rows: [GridItem] = [GridItem(.flexible())]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("FEATURED")
                .font(.title2)
                .bold()
            ScrollView(.horizontal) {
                LazyHGrid(rows: rows) {
                    ForEach(0..<products.count) { index in
                        NavigationLink(destination: ProductSVC(product: products[index]).environmentObject(cartManager).environmentObject(historyManager).environmentObject(ordersManager)) {
                            HStack {
                                VStack {
                                    Image(products[index].productIMG)
                                        .resizable()
                                        .frame(maxWidth: 100, maxHeight: 100)
                                        .scaledToFill()
                                        .clipped()
                                        .listRowInsets(EdgeInsets())
                                        .cornerRadius(10)
                                    Text(products[index].name)
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
            .environmentObject(CartManager())
            .environmentObject(HistoryManager())
            .environmentObject(OrdersManager())
    }
}
