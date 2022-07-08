//
//  HistoryManager.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/7/22.
//

import Foundation

class HistoryManager: ObservableObject {
    @Published private(set) var history: [NewProduct] = CDHistoryHelper.cdHistoryHelper.getSearchHistory()
    
    func addToHistory(product: NewProduct) {
        history.append(product)
    }
    
    func getHistory() -> [NewProduct] {
        return history
    }
    
}
