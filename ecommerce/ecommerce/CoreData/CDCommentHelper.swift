//
//  CDCommentHelper.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/11/22.
//

import Foundation
import UIKit
import CoreData

class CDCommentHelper {
    
    static var cdCommentHelper = CDCommentHelper()
    
    let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext
    
    func addComment(commentObj: NoteModel) {
        
        let commentEntity = NSEntityDescription.insertNewObject(forEntityName: "PNPComment", into: context!) as! PNPComment
        
        commentEntity.productID = Int64(commentObj.productID)
        commentEntity.username = commentObj.username
        commentEntity.date = commentObj.date
        commentEntity.title = commentObj.title
        commentEntity.body = commentObj.body
        
        do {
            try context?.save()
            print("data saved successfully")
        } catch {
            print("data save unsuccessful")
            print(error.localizedDescription)
        }
    }
    
//    func addItem(pid: Int, itemObj: NewItem) {
//
//        let itemEntity = NSEntityDescription.insertNewObject(forEntityName: "Item", into: context!) as! Item
//
//        itemEntity.pid = Int64(pid)
//        itemEntity.item = itemObj.item
//        itemEntity.quantity = Int64(itemObj.quantity)
//
//        do {
//            try context?.save()
//            print("data saved successfully")
//        } catch {
//            print("data save unsuccessful")
//            print(error.localizedDescription)
//        }
//    }
//
//    func addPreview(pid: Int, previewObj: NewPreview) {
//        let previewEntity = NSEntityDescription.insertNewObject(forEntityName: "Preview", into: context!) as! Preview
//
//        previewEntity.pid = Int64(pid)
//        previewEntity.img = previewObj.img
//
//        do {
//            try context?.save()
//            print("data saved successfully")
//        } catch {
//            print("data save unsuccessful")
//            print(error.localizedDescription)
//        }
//    }
//
//    func addRecommended(pid: Int, recommendedObj: NewRecommended) {
//
//        let recommendedEntity = NSEntityDescription.insertNewObject(forEntityName: "Recommended", into: context!) as! Recommended
//
//        recommendedEntity.pid = Int64(pid)
//        recommendedEntity.name = recommendedObj.name
//        recommendedEntity.img = recommendedObj.img
//
//        do {
//            try context?.save()
//            print("data saved successfully")
//        } catch {
//            print("data save unsuccessful")
//            print(error.localizedDescription)
//        }
//    }
//
//    func displaySearchHistory() {
//        var productData = [Product]()
//
//        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Product")
//
//        do {
//            productData = try context?.fetch(fetchRequest) as! [Product]
//        } catch {
//            print("can not fetch data")
//        }
//
//        print(String(productData.count))
//    }
//
//    func getSearchHistory() -> [NewProduct] {
//        var history = [NewProduct]()
//        var productData = [Product]()
//        var itemData = [Item]()
//        var previewData = [Preview]()
//        var recommendedData = [Recommended]()
//
//        let fetchProducts = NSFetchRequest<NSFetchRequestResult>(entityName: "Product")
//        let fetchItems = NSFetchRequest<NSFetchRequestResult>(entityName: "Item")
//        let fetchPreviews = NSFetchRequest<NSFetchRequestResult>(entityName: "Preview")
//        let fetchRecommended = NSFetchRequest<NSFetchRequestResult>(entityName: "Recommended")
//
//        do {
//            productData = try context?.fetch(fetchProducts) as! [Product]
//            itemData = try context?.fetch(fetchItems) as! [Item]
//            previewData = try context?.fetch(fetchPreviews) as! [Preview]
//            recommendedData = try context?.fetch(fetchRecommended) as! [Recommended]
//
//            for x in productData {
//
//                var itemDataResult = [NewItem]()
//                var previewDataResult = [NewPreview]()
//                var recommendedDataResult = [NewRecommended]()
//
//                for ite in itemData {
//                    itemDataResult.append(NewItem(quantity: Int(ite.quantity), item: ite.item!))
//                }
//
//                for pre in previewData {
//                    previewDataResult.append(NewPreview(img: pre.img!))
//                }
//
//                for rec in recommendedData {
//                    recommendedDataResult.append(NewRecommended(name: rec.name!, img: rec.img!))
//                }
//
//                history.append(
//                    NewProduct(id: Int(x.id), name: x.name!, category: x.category!, new: x.new, price: Int(x.price), featured: x.featured, cartIMG: x.cartIMG!, productIMG: x.productIMG!, description: x.pDescription!, features: x.features!, contents: itemDataResult, previews: previewDataResult, recommended: recommendedDataResult)
//                )
//            }
//
//        } catch {
//            print("can not fetch data")
//        }
//
//        return history
//
//    }
    
    
    
    
    
}


