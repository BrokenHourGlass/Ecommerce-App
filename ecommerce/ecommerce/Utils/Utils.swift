//
//  Utils.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/12/22.
//

import Foundation

let dateFormatter = DateFormatter()
let userDefaults = UserDefaults.standard

func formateDate(date: Date) -> String {
    dateFormatter.dateStyle = .medium
    dateFormatter.timeStyle = .none
    dateFormatter.locale = Locale(identifier: "en_US")
    return dateFormatter.string(from: date)
}

func constructProductsData() -> [NewProduct] {
    let sqlDB = ProductDB.productDb.getData()
    var productsData = [NewProduct]()
    
    for idx in 0..<sqlDB.count {
        productsData.append(NewProduct(id: sqlDB[idx].id, name: sqlDB[idx].name, category: sqlDB[idx].category, new: sqlDB[idx].new, price: sqlDB[idx].price, featured: sqlDB[idx].featured, cartIMG: sqlDB[idx].cartIMG, productIMG: sqlDB[idx].productIMG, description: sqlDB[idx].description, features: sqlDB[idx].features, contents: productsJSON[idx].contents, previews: productsJSON[idx].previews, recommended: productsJSON[idx].recommended))
    }
    
    return productsData
}

