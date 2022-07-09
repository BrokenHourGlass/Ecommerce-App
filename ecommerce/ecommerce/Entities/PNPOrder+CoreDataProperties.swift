//
//  PNPOrder+CoreDataProperties.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/8/22.
//
//

import Foundation
import CoreData


extension PNPOrder {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PNPOrder> {
        return NSFetchRequest<PNPOrder>(entityName: "PNPOrder")
    }

    @NSManaged public var date: Date?
    @NSManaged public var orderId: String?
    @NSManaged public var status: Int16

}

extension PNPOrder : Identifiable {

}
