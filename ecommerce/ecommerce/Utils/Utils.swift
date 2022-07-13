//
//  Utils.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/12/22.
//

import Foundation

let dateFormatter = DateFormatter()

func formateDate(date: Date) -> String {
    dateFormatter.dateStyle = .medium
    dateFormatter.timeStyle = .none
    dateFormatter.locale = Locale(identifier: "en_US")
    return dateFormatter.string(from: date)
}

func initializeDatabase() {
    
}
