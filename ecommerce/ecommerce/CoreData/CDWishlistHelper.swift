//
//  CDWishlistHelper.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/14/22.
//

import Foundation
import UIKit
import CoreData

class CDWishlistHelper {
    
    static var cdWishlistHelper = CDWishlistHelper()
    
    let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext
    
    func addToWishlist(wishlistItemObj: WishlistItemModel) {
        
        let wishlistEntity = NSEntityDescription.insertNewObject(forEntityName: "PNPWishlistItem", into: context!) as! PNPWishlistItem
        
        wishlistEntity.id = wishlistItemObj.id
        wishlistEntity.userId = wishlistItemObj.userId
        wishlistEntity.productId = Int64(wishlistItemObj.productId)
        wishlistEntity.status = wishlistItemObj.status
        
        do {
            try context?.save()
            print("data saved successfully")
        } catch {
            print("data save unsuccessful")
            print(error.localizedDescription)
        }
    }
    
    func removeFromWishlist(wishlistItemID: String) {
        
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "PNPWishlistItem")
        fetchRequest.predicate = NSPredicate(format: "id == %@", wishlistItemID)
        do {
            let wishlistItem = try context?.fetch(fetchRequest)
            context?.delete(wishlistItem?.first as! PNPWishlistItem)
            try context?.save()
            print("Removed item from wishlist successfully")
        } catch {
            print("Error detected")
        }
        
    }
    
}
