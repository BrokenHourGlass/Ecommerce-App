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
    @EnvironmentObject var commentsManager: CommentsManager
    @EnvironmentObject var wishlistManager: WishlistManager
    
    @State var showNextView = false
    @State var chosenCategory = ""
    @State var current = 0
    
    let columns: [GridItem] = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Categories")
                .font(.title2)
                .bold()
            NavigationLink(destination: CategorySVC(category: chosenCategory).environmentObject(cartManager).environmentObject(historyManager).environmentObject(ordersManager).environmentObject(commentsManager).environmentObject(wishlistManager), isActive: $showNextView) {
                EmptyView()
            }
            LazyVGrid(columns: columns) {
                ForEach(CatalogData.categories, id: \.category) { categoryObj in
                    Button(action: {
                        chosenCategory = categoryObj.category.lowercased()
                        showNextView = true
                    }) {
                        CatalogCategory(categoryData: categoryObj)
                            .environmentObject(cartManager)
                            .environmentObject(historyManager)
                            .environmentObject(ordersManager)
                    }
                }
            }
            .padding([.top], 10)
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
            .environmentObject(CommentsManager())
            .environmentObject(WishlistManager())
    }
}
