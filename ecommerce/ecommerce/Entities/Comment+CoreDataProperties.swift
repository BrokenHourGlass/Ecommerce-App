//
//  Comment+CoreDataProperties.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/11/22.
//
//

import Foundation
import CoreData


extension Comment {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Comment> {
        return NSFetchRequest<Comment>(entityName: "Comment")
    }

    @NSManaged public var productID: Int64
    @NSManaged public var username: String?
    @NSManaged public var title: String?
    @NSManaged public var date: Date?
    @NSManaged public var body: String?

}

extension Comment : Identifiable {

}
