//
//  CommentHelpers.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/12/22.
//

import Foundation

func validateComment(commentObj: CommentModel) throws {
    guard !commentObj.title.isEmpty else {
        throw CommentErrors.titleIsEmpty
    }
    
    guard !commentObj.title.isEmpty else {
        throw CommentErrors.bodyIsEmpty
    }
}
