//
//  CommentPageSVC.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/11/22.
//

import SwiftUI

struct CommentPageSVC: View {
    
    var notes = NoteModel.fetchNotes()
    
    var body: some View {
        VStack {
            Text("Comments")
                .font(.title)
            ScrollView {
                ForEach(notes, id: \.username) { note in
                    CommentItem(note: note)
                }
            }
        }
    }
}

struct CommentPageSVC_Previews: PreviewProvider {
    static var previews: some View {
        CommentPageSVC()
    }
}
