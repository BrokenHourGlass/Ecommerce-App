//
//  Preview+CoreDataProperties.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/7/22.
//
//

import Foundation
import CoreData


extension Preview {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Preview> {
        return NSFetchRequest<Preview>(entityName: "Preview")
    }

    @NSManaged public var img: String?
    @NSManaged public var pid: Int64

}

extension Preview : Identifiable {

}
