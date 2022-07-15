//
//  PNPWishlistItem+CoreDataProperties.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/14/22.
//
//

import Foundation
import CoreData


extension PNPWishlistItem {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PNPWishlistItem> {
        return NSFetchRequest<PNPWishlistItem>(entityName: "PNPWishlistItem")
    }

    @NSManaged public var id: String?
    @NSManaged public var userId: String?
    @NSManaged public var productId: Int64
    @NSManaged public var status: Bool

}

extension PNPWishlistItem : Identifiable {

}
