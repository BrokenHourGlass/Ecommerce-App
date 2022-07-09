//
//  PNPOrderItem+CoreDataProperties.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/8/22.
//
//

import Foundation
import CoreData


extension PNPOrderItem {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PNPOrderItem> {
        return NSFetchRequest<PNPOrderItem>(entityName: "PNPOrderItem")
    }

    @NSManaged public var orderId: String?
    @NSManaged public var name: String?
    @NSManaged public var quantity: Int64

}

extension PNPOrderItem : Identifiable {

}
