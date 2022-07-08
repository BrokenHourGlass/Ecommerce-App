//
//  Recommended+CoreDataProperties.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/7/22.
//
//

import Foundation
import CoreData


extension Recommended {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Recommended> {
        return NSFetchRequest<Recommended>(entityName: "Recommended")
    }

    @NSManaged public var img: String?
    @NSManaged public var name: String?
    @NSManaged public var pid: Int64

}

extension Recommended : Identifiable {

}
