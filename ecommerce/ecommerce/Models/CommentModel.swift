//
//  NoteModel.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/11/22.
//

import Foundation

class CommentModel {
    var commentID: String
    var productID: Int
    var username: String
    var title: String
    var date: Date
    var body: String
    
    init(commentID: String, productID: Int, username: String, title: String, date: Date, body: String) {
        self.commentID = commentID
        self.productID = productID
        self.username = username
        self.title = title
        self.date = date
        self.body = body
    }
    
}
