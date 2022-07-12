//
//  CommentPageSVC.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/11/22.
//

import SwiftUI

struct CommentsPageSVC: View {
    
    @State var showNextView = false
    
    var notes = NoteModel.fetchNotes()
    
    var body: some View {
        VStack(alignment: .leading) {
            NavigationLink(destination: CommentSVC(), isActive: $showNextView) {
               EmptyView()
            }
            HStack {
                Text("Comments")
                    .font(.title)
                    .bold()
                Spacer()
                Button {
                    showNextView = true
                } label: {
                    Image(systemName: "plus")
                }
                .padding([.top, .bottom, .leading, .trailing], 10)
                .foregroundColor(Color.white)
                .background(Color.accentColor)
                .cornerRadius(10)
            }
            ScrollView {
                ForEach(notes, id: \.username) { note in
                    CommentItem(note: note)
                }
            }
            Spacer()
        }
        .padding()
        .navigationTitle("")
        .navigationBarHidden(true)
    }
}

struct CommentsPageSVC_Previews: PreviewProvider {
    static var previews: some View {
        CommentsPageSVC()
    }
}
