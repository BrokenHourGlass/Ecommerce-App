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
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Text(note.username)
                Spacer()
            }
            HStack {
                Text(note.title)
                Spacer()
            }
            HStack {
                Text(note.body)
                Spacer()
            }
        }
        .padding([.bottom], 20)
    }
}

struct CommentItem_Previews: PreviewProvider {
    static var previews: some View {
        CommentItem(note: NoteModel(username: "name", title: "title", date: Date(), body: "body"))
    }
}
