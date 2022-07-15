//
//  User+CoreDataProperties.swift
//  ecommerce
//
//  Created by Liban Abdinur on 7/15/22.
//
//

import Foundation
import CoreData


extension User {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<User> {
        return NSFetchRequest<User>(entityName: "User")
    }

    @NSManaged public var mobileNumber: String?
    @NSManaged public var name: String?
    @NSManaged public var password: String?
    @NSManaged public var repassword: String?
    @NSManaged public var username: String?

}

extension User : Identifiable {

}
