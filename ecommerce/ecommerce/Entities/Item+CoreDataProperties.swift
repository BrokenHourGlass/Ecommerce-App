//
//  Item+CoreDataProperties.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/7/22.
//
//

import Foundation
import CoreData


extension Item {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Item> {
        return NSFetchRequest<Item>(entityName: "Item")
    }

    @NSManaged public var item: String?
    @NSManaged public var pid: Int16
    @NSManaged public var quantity: Int64

}

extension Item : Identifiable {

}
