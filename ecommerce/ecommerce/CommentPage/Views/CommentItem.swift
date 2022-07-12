//
//  CommentItem.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/11/22.
//

import SwiftUI

struct CommentItem: View {
    
    var note: NoteModel
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct CommentItem_Previews: PreviewProvider {
    static var previews: some View {
        CommentItem(note: NoteModel(username: "name", title: "title", body: "body"))
    }
}
