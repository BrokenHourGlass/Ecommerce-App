//
//  CDHistoryHelper.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/7/22.
//

import Foundation
import UIKit
import CoreData

class CDHistoryHelper {
    
    static var cdHistoryHelper = CDHistoryHelper()
    
    let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext
    
    func addProduct(product: NewProduct) {
        
        let productEntity = NSEntityDescription.insertNewObject(forEntityName: "Product", into: context!) as! Product
        
        productEntity.id = Int64(product.id)
        productEntity.name = product.name
        productEntity.category = product.category
        productEntity.new = product.new
        productEntity.price = Int64(product.price)
        productEntity.featured = product.featured
        productEntity.cartIMG = product.cartIMG
        productEntity.productIMG = product.productIMG
        productEntity.pDescription = product.description
        productEntity.features = product.features
        
        do {
            try context?.save()
            print("data saved successfully")
        } catch {
            print("data save unsuccessful")
            print(error.localizedDescription)
        }
    }
    
}

