//
//  CDOrdersHelper.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/8/22.
//

import Foundation
import UIKit
import CoreData

class CDOrdersHelper {
    
    static var cdOrdersHelper = CDOrdersHelper()
    
    let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext
    
    func addOrder(orderObj: Order) {
        let orderEntity = NSEntityDescription.insertNewObject(forEntityName: "PNPOrder", into: context!) as! PNPOrder
        
        orderEntity.orderId = orderObj.orderId
        orderEntity.date = orderObj.date
        orderEntity.status = Int16(orderObj.status)
        
        do {
            try context?.save()
            print("data saved successfully")
        } catch {
            print("data save unsuccessful")
            print(error.localizedDescription)
        }
    }
    
    func getOrders() -> [Order] {
        var orders = [Order]()
        
        let fetchOrders = NSFetchRequest<NSFetchRequestResult>(entityName: "PNPOrder")
        
        do {
            let result = try context?.fetch(fetchOrders) as! [PNPOrder]
            
            for x in result {
                orders.append(Order(orderId: x.orderId!, date: x.date!, status: Int(x.status)))
            }
        } catch {
            print("can not fetch data")
        }
        
        return orders
        
    }
    
    func refundOrder(orderId: String) {
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "PNPOrder")
        fetchRequest.predicate = NSPredicate(format: "orderId == %@", orderId)
        
        do {
            let orders = try context?.fetch(fetchRequest) as! [PNPOrder]
            if (orders.count != 0) {
                let order = orders.first!
                order.status = 0
                try context?.save()
            }
        } catch {
            print("Error detected")
        }
    }
}

