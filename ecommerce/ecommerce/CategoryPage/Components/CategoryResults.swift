//
//  CategoryResults.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/3/22.
//

import SwiftUI

struct CategoryResults: View {
    @EnvironmentObject var cartManager: CartManager
    @EnvironmentObject var historyManager: HistoryManager
    @EnvironmentObject var ordersManager: OrdersManager
    @EnvironmentObject var commentsManager: CommentsManager
    
    @State var showNextView = false
    @State var current = 0
    
    let columns: [GridItem] = [GridItem(.flexible())]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("RESULTS")
                .font(.title2)
                .bold()
            NavigationLink(destination: ProductSVC(product: products[current]).environmentObject(cartManager).environmentObject(historyManager).environmentObject(ordersManager).environmentObject(commentsManager), isActive: $showNextView) {
                EmptyView()
            }
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(0..<products.count) { index in
                        Button(action: {
                            current = index
                            showNextView = true
                        }) {
                            CategoryItemHelper(product: products[index])
                        }
                    }
                }
            }
            .padding([.top], 10)
        }
        .padding([.leading, .trailing], 17)
        .navigationTitle("")
        .navigationBarHidden(true)
    }
}

struct CategoryResults_Previews: PreviewProvider {
    static var previews: some View {
        CategoryResults()
            .environmentObject(CartManager())
            .environmentObject(HistoryManager())
            .environmentObject(OrdersManager())
            .environmentObject(CommentsManager())
    }
}
