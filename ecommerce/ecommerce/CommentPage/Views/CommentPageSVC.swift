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
        VStack(alignment: .leading) {
            Text("Comments")
                .font(.title)
            ScrollView {
                ForEach(notes, id: \.username) { note in
                    CommentItem(note: note)
                }
            }
            Spacer()
        }
        .navigationTitle("")
        .navigationBarHidden(true)
    }
}

struct CommentPageSVC_Previews: PreviewProvider {
    static var previews: some View {
        CommentPageSVC()
    }
}
