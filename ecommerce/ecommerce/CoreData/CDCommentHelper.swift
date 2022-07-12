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
    
    func addComment(commentObj: CommentModel) {
        
        let commentEntity = NSEntityDescription.insertNewObject(forEntityName: "PNPComment", into: context!) as! PNPComment
        
        commentEntity.commentID = commentObj.commentID
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
    
    func getComments(productID: Int) -> [CommentModel] {
        var comments = [CommentModel]()
        
        let fetchComments = NSFetchRequest<NSFetchRequestResult>(entityName: "PNPComment")
        
        do {
            let commentsData = try context?.fetch(fetchComments) as! [PNPComment]
            let filteredComments = commentsData.filter({ $0.productID == productID })
                
            for x in filteredComments {
                comments.append(CommentModel(commentID: x.commentID!, productID: Int(x.productID), username: x.username!, title: x.title!, date: x.date!, body: x.body!))
            }
            
        } catch {
            print("can not fetch data")
        }
        
        return comments
    }
}


