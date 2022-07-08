//
//  CatalogCategory.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/6/22.
//

import SwiftUI

struct CatalogCategory: View {
    @EnvironmentObject var cartManager: CartManager
    @EnvironmentObject var historyManager: HistoryManager
    
    var categoryData: CategoryData
    
    var body: some View {
        NavigationLink(destination: CategorySVC().environmentObject(cartManager).environmentObject(historyManager)) {
            VStack {
                Image(categoryData.img)
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .listRowInsets(EdgeInsets())
                    .cornerRadius(15)
                Text(categoryData.category)
                    .bold()
            }
            
        }
    }
}

struct CatalogCategory_Previews: PreviewProvider {
    static var previews: some View {
        CatalogCategory(categoryData: CategoryData(category: "category", img: "image"))
            .environmentObject(CartManager())
            .environmentObject(HistoryManager())
    }
}
