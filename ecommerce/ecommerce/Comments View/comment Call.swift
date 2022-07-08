//
//  comment Call.swift
//  ecommerce
//
//  Created by Liban Abdinur on 7/8/22.
//

import SwiftUI

struct comment_Call: View {
    var body: some View {
       
        
        NavigationView{
            VStack{
                NavigationLink(destination: CommentsView(comments: [Comment.mock1, Comment.mock2])){
                    Text("click here to leave a note")
                    .frame(width: 200, height: 40)
                    .background(Color.yellow)
                    .cornerRadius(1)
               }
            }
        }
        
        
    }
}

struct comment_Call_Previews: PreviewProvider {
    static var previews: some View {
        comment_Call()
    }
}
