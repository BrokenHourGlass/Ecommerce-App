//
//  CommentViewModel.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/12/22.
//

import Foundation

class CommentViewModel {
    
    static func commentValidation(commentObj: CommentModel) -> Bool {
        var status = false
        
        do {
            try validateComment(commentObj: commentObj)
            status = true
        } catch CommentErrors.titleIsEmpty {
            print("title is empty")
        } catch CommentErrors.bodyIsEmpty {
            print("body is empty")
        } catch {
            print("Unknown error")
        }
        
        return status
    }
}

enum CommentErrors: Error {
    case titleIsEmpty
    case bodyIsEmpty
}
