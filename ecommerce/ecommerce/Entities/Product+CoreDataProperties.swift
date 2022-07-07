//
//  Product+CoreDataProperties.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/7/22.
//
//

import Foundation
import CoreData


extension Product {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Product> {
        return NSFetchRequest<Product>(entityName: "Product")
    }

    @NSManaged public var cartIMG: String?
    @NSManaged public var category: String?
    @NSManaged public var featured: Bool
    @NSManaged public var features: String?
    @NSManaged public var id: Int64
    @NSManaged public var name: String?
    @NSManaged public var new: Bool
    @NSManaged public var pDescription: String?
    @NSManaged public var price: Int64
    @NSManaged public var productIMG: String?
    @NSManaged public var items: NSSet?
    @NSManaged public var previews: NSSet?
    @NSManaged public var recommended: NSSet?

}

// MARK: Generated accessors for items
extension Product {

    @objc(addItemsObject:)
    @NSManaged public func addToItems(_ value: Item)

    @objc(removeItemsObject:)
    @NSManaged public func removeFromItems(_ value: Item)

    @objc(addItems:)
    @NSManaged public func addToItems(_ values: NSSet)

    @objc(removeItems:)
    @NSManaged public func removeFromItems(_ values: NSSet)

}

// MARK: Generated accessors for previews
extension Product {

    @objc(addPreviewsObject:)
    @NSManaged public func addToPreviews(_ value: Preview)

    @objc(removePreviewsObject:)
    @NSManaged public func removeFromPreviews(_ value: Preview)

    @objc(addPreviews:)
    @NSManaged public func addToPreviews(_ values: NSSet)

    @objc(removePreviews:)
    @NSManaged public func removeFromPreviews(_ values: NSSet)

}

// MARK: Generated accessors for recommended
extension Product {

    @objc(addRecommendedObject:)
    @NSManaged public func addToRecommended(_ value: Recommended)

    @objc(removeRecommendedObject:)
    @NSManaged public func removeFromRecommended(_ value: Recommended)

    @objc(addRecommended:)
    @NSManaged public func addToRecommended(_ values: NSSet)

    @objc(removeRecommended:)
    @NSManaged public func removeFromRecommended(_ values: NSSet)

}

extension Product : Identifiable {

}
