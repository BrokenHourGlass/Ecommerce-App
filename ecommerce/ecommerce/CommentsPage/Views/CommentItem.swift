//
//  CommentItem.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/11/22.
//

import SwiftUI

struct CommentItem: View {
    
    var comment: CommentModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Text(comment.username)
                Spacer()
                Text(formateDate(date: comment.date))
            }
            HStack {
                Text(comment.title)
                    .bold()
                Spacer()
            }
            HStack {
                Text(comment.body)
                Spacer()
            }
        }
        .padding([.bottom], 20)
    }
}

struct CommentItem_Previews: PreviewProvider {
    static var previews: some View {
        CommentItem(comment: CommentModel(commentID: "commentID", productID: 0, username: "name", title: "title", date: Date(), body: "body"))
    }
}
