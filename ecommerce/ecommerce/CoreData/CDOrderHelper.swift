//
//  CDOrderHelper.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/8/22.
//

import Foundation
import UIKit
import CoreData

class CDOrderHelper {
    
    static var cdOrderHelper = CDOrderHelper()
    
    let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext
    
    func addOrderItem(orderId: String, cartItemObj: CartItem) {
        let orderItemEntity = NSEntityDescription.insertNewObject(forEntityName: "PNPOrderItem", into: context!) as! PNPOrderItem
        
        orderItemEntity.orderId = orderId
        orderItemEntity.productId = Int64(cartItemObj.item.id)
        orderItemEntity.quantity = Int64(cartItemObj.quantity)
        
        do {
            try context?.save()
            print("data saved successfully")
        } catch {
            print("data save unsuccessful")
            print(error.localizedDescription)
        }
    }
    
    func getOrderItems(orderId: String) -> [CartItem] {
        var orderItems = [CartItem]()
        
        let fetchOrderItems = NSFetchRequest<NSFetchRequestResult>(entityName: "PNPOrderItem")
        
        do {
            let orderItemsData = try context?.fetch(fetchOrderItems) as! [PNPOrderItem]
            
            for x in orderItemsData {
                if (x.orderId == orderId) {
                    let product = products.first(where: {
                        $0.id == Int(x.productId)
                    })
                    
                    orderItems.append(CartItem(item: product!, unitPrice: product!.price, quantity: Int(x.quantity)))
                }
            }
        } catch {
            print("can not fetch data")
        }
        
        return orderItems
    }
}

