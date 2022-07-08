//
//  CategorySVC.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/3/22.
//

import SwiftUI

struct CategorySVC: View {
    @EnvironmentObject var cartManager: CartManager
    @EnvironmentObject var historyManager: HistoryManager
    
    let columns: [GridItem] = [GridItem(.flexible())]
    
    var body: some View {
        VStack {
            NavigationBar()
                .environmentObject(cartManager)
            NavigationBack()
            ScrollView {
                LazyVGrid(columns: columns) {
                    SignupModal()
                    VStack(spacing: 20) {
                        CategoryHero()
                        CategoryFeatured()
                            .environmentObject(cartManager)
                            .environmentObject(historyManager)
                        CategoryResults()
                            .environmentObject(cartManager)
                            .environmentObject(historyManager)
                    }
                }
            }
        }
        .navigationTitle("")
        .navigationBarHidden(true)
    }
}

struct CategorySVC_Previews: PreviewProvider {
    static var previews: some View {
        CategorySVC()
            .environmentObject(CartManager())
            .environmentObject(HistoryManager())
    }
}
