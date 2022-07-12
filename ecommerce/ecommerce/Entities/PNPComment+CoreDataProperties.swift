//
//  PNPComment+CoreDataProperties.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/12/22.
//
//

import Foundation
import CoreData


extension PNPComment {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PNPComment> {
        return NSFetchRequest<PNPComment>(entityName: "PNPComment")
    }

    @NSManaged public var productID: Int64
    @NSManaged public var username: String?
    @NSManaged public var title: String?
    @NSManaged public var date: Date?
    @NSManaged public var body: String?
    @NSManaged public var commentID: String?

}

extension PNPComment : Identifiable {

}
