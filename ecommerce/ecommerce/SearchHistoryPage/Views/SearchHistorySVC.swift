//
//  SearchHistorySVC.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/7/22.
//

import SwiftUI

struct SearchHistorySVC: View {
    @EnvironmentObject var cartManager: CartManager
    @EnvironmentObject var historyManager: HistoryManager
    
    var body: some View {
        VStack(alignment: .leading) {
            NavigationBar()
                .environmentObject(cartManager)
            SignupModal()
            Text("Recent Searches")
                .font(.title2)
                .bold()
                .padding([.leading, .trailing], 14)
            ScrollView {
                LazyVStack {
                    ForEach(0..<products.count) { index in
                        NavigationLink(destination: ProductSVC(product: products[index]).environmentObject(cartManager)) {
                            SearchHistoryItem(product: products[index])
                        }
                    }
                }
            }
            .padding([.leading, .trailing], 14)
            Spacer()
        }
        .navigationTitle("")
        .navigationBarHidden(true)
    }
}

struct SearchHistorySVC_Previews: PreviewProvider {
    static var previews: some View {
        SearchHistorySVC()
            .environmentObject(CartManager())
            .environmentObject(HistoryManager())
    }
}
