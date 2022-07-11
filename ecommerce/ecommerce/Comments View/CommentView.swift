//
//  CommentView.swift
//  ecommerce
//
//  Created by Liban Abdinur on 7/8/22.
//





import SwiftUI

struct CommentView: View {
    
    var comment: Comment
    var body: some View {
        Text(comment.text)
    }
    
    
}

struct PostCommentView: View{
    @Binding var commentText: String
    //@Binding var comments: [Comment]
    
    var body: some View{
        VStack{
            TextEditor(text: $commentText)
//            Button(action: submit, label: {
//                Text("Submit")
//            })

        }
            
                
       
                
            

    }
   
    
}

struct CommentsView: View{
    @State var commentText: String = ""
    @State var comments: [Comment]
    var body: some View{
        VStack{
            
            Text("User")
            
            List {
                PostCommentView(commentText: $commentText)
                ForEach(comments) { comment in
                    CommentView(comment: comment)
                    
                }
                
            }
            Button(action: submit, label: {
                Text("Submit")
            })
            
        }
        
        
        
        
    }
    func submit(){
            comments.append(Comment(text: commentText, date: Date(), author: "Current User"))
            commentText = ""
    }
}

struct Comment: Codable, Identifiable {
    var id: UUID = UUID()
    let text: String
    let date: Date
    let author: String
    
    static var mock1: Comment{
        Comment(text: "Hello", date:Date(), author: "John")
    }
    static var mock2: Comment{
        Comment(text: "Hello", date:Date(), author: "lee")
    }
}

struct CommentView_Previews: PreviewProvider {
    static var previews: some View {
        CommentsView(comments: [Comment.mock1, Comment.mock2])
    }
}


