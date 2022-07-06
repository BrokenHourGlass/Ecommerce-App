//
//  CategorySVC.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/3/22.
//

import SwiftUI

struct CategorySVC: View {
    @EnvironmentObject var cartManager: CartManager
    
    let columns: [GridItem] = [GridItem(.flexible())]
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationBar()
                    .environmentObject(cartManager)
                NavigationBack()
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 20) {
                        CategoryHero()
                        CategoryFeatured()
                            .environmentObject(cartManager)
                        CategoryResults()
                            .environmentObject(cartManager)
                    }
                }
            }
            .navigationTitle("")
            .navigationBarHidden(true)
        }
    }
}

struct CategorySVC_Previews: PreviewProvider {
    static var previews: some View {
        CategorySVC()
    }
}
