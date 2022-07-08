//
//  CatalogCategories.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/6/22.
//

import SwiftUI

struct CatalogCategories: View {
    @EnvironmentObject var cartManager: CartManager
    @EnvironmentObject var historyManager: HistoryManager
    @EnvironmentObject var ordersManager: OrdersManager
    
    let columns: [GridItem] = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Categories")
                .font(.title2)
                .bold()
            LazyVGrid(columns: columns) {
                ForEach(0..<CatalogData.categories.count) { index in
                    CatalogCategory(categoryData: CatalogData.categories[index])
                        .environmentObject(cartManager)
                        .environmentObject(historyManager)
                        .environmentObject(ordersManager)
                }
            }
        }
        .padding()
    }
}

struct CatalogCategories_Previews: PreviewProvider {
    static var previews: some View {
        CatalogCategories()
            .environmentObject(CartManager())
            .environmentObject(HistoryManager())
            .environmentObject(OrdersManager())
    }
}
