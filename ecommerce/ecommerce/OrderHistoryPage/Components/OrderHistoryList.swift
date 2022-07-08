//
//  OrderHistoryList.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/8/22.
//

import SwiftUI

struct OrderHistoryList: View {
    @EnvironmentObject var cartManager: CartManager
    @EnvironmentObject var historyManager: HistoryManager
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct OrderHistoryList_Previews: PreviewProvider {
    static var previews: some View {
        OrderHistoryList()
            .environmentObject(CartManager())
            .environmentObject(HistoryManager())
        
    }
}
