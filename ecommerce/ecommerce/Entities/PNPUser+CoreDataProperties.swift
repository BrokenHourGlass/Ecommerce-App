//
//  PNPUser+CoreDataProperties.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/15/22.
//
//

import Foundation
import CoreData


extension PNPUser {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PNPUser> {
        return NSFetchRequest<PNPUser>(entityName: "PNPUser")
    }

    @NSManaged public var email: String?
    @NSManaged public var password: String?
    @NSManaged public var mobileNumber: String?
    @NSManaged public var userId: String?
    @NSManaged public var firstname: String?
    @NSManaged public var lastname: String?

}

extension PNPUser : Identifiable {

}
