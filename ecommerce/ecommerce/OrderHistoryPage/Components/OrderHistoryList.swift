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
        Text("Hello World!")
    }
}

struct OrderHistoryList_Previews: PreviewProvider {
    static var previews: some View {
        OrderHistoryList()
            .environmentObject(CartManager())
            .environmentObject(HistoryManager())
        
    }
}
