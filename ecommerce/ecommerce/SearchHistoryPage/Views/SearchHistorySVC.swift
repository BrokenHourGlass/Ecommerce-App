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
                    ForEach(historyManager.history, id: \.id) { product in
                        NavigationLink(destination: ProductSVC(product: product).environmentObject(cartManager)) {
                            SearchHistoryItem(product: product)
                        }
                    }
                }
            }
            .padding([.leading, .trailing], 14)
            Spacer()
        }
        .navigationTitle("")
        .navigationBarHidden(true)
        .onAppear(perform: {
            CDHistoryHelper.cdHistoryHelper.getSearchHistory()
        })
    }
}

struct SearchHistorySVC_Previews: PreviewProvider {
    static var previews: some View {
        SearchHistorySVC()
            .environmentObject(CartManager())
            .environmentObject(HistoryManager())
    }
}
