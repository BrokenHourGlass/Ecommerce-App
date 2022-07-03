//
//  CategorySVC.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/3/22.
//

import SwiftUI

struct CategorySVC: View {
    var modelData = products
    
    let columns: [GridItem] = [GridItem(.flexible())]
    
    var body: some View {
        VStack {
            NavigationBar()
            ScrollView {
                LazyVGrid(columns: columns) {
                    CategoryHero()
                    CategoryFeatured()
                    CategoryResults()
                }
            }
        }
    }
}

struct CategorySVC_Previews: PreviewProvider {
    static var previews: some View {
        CategorySVC()
    }
}
